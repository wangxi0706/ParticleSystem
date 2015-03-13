#include "vec.h"
#include <cmath>

Vec3::Vec3(float x, float y, float z) : x(x), y(y), z(z)
{ }

float Vec3::dot(Vec3 *other)
{
	return x * other->x + y * other->y + z * other->z;
}
	
//float Vec3::length()
//{
//	float sum = 0;
//	sum += x * x;
//	sum += y * y;
//	sum += z * z;
//
//	return sqrt(sum);
//}
	
Vec3 Vec3::normalised()
{
	float len = length();
	
	Vec3 normalised(x / len, y / len, z / len);
	return normalised;
}

//Vec3 Vec3::reflection(Vec3 normal)
//{
//	Vec3 reflection = *this - 2 * ((*this).dot(&normal) * normal);
//	return reflection;
//}

// Operators
//Vec3 Vec3::operator+(const Vec3& other)
//{
//	Vec3 newVec(x + other.x, y + other.y, z + other.z);
//	return newVec;
//}
//
//Vec3 Vec3::operator-(const Vec3& other)
//{
//	Vec3 newVec(x - other.x, y - other.y, z - other.z);
//	return newVec;
//}
//
//Vec3 Vec3::operator*(const Vec3& other)
//{
//	Vec3 newVec(x * other.x, y * other.y, z * other.z);
//	return newVec;
//}
