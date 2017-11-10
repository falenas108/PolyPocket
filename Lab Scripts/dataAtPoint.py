import numpy as np
import scipy.interpolate

class LinearInterpolation:
	def __init__ (self, pos, dat):
		assert len (pos[0]) == 2, "position data not two dimensional"
		assert len (pos) == len (dat), "position and data do not have same dim"
		# transpose the data so we can make different interpolators for each
		dat = np.array (dat).transpose ().tolist ()
		# break coordinates up
		self.interpolators = \
			[ scipy.interpolate.LinearNDInterpolator (pos, d) for d in dat ]
	def __call__ (self, x):
		retDat = []
		for interpolator in self.interpolators:
			retDat.append (interpolator (x[0], x[1]).tolist ())
		return retDat

class CubicInterpolation:
	def __init__ (self, pos, dat):
		assert len (pos[0]) == 2, "position data not two dimensional"
		assert len (pos) == len (dat), "position and data do not have same dim"
		# transpose the data so we can make different interpolators for each
		dat = np.array (dat).transpose ().tolist ()
		# break coordinates up
		self.interpolators = \
			[ scipy.interpolate.CloughTocher2DInterpolator(pos,d) for d in dat ]
	def __call__ (self, x):
		retDat = []
		for interpolator in self.interpolators:
			retDat.append (interpolator (x[0], x[1]).tolist ())
		return retDat

class DataAtPoint:
	def __init__ (self, dat, level='linear'):
		pos = [[d[0], d[1]] for d in dat ]
		vals = [ [ d[i] for i in xrange (3, len (d)) ] for d in dat ]
		if level == 'linear':
			self.interp = LinearInterpolation (pos, vals)
		elif level == 'cubic':
			self.interp = CubicInterpolation (pos, vals)
		else:
			raise Exception ('Specify interp level \"linear\" OR \"cubic\"')
	def __call__ (self, x, y):
		"""
		returns u, v, p for given position x, y
		"""
		vals = self.interp ((x, y))
		return vals

