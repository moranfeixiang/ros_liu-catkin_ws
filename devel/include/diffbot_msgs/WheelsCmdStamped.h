// Generated by gencpp from file diffbot_msgs/WheelsCmdStamped.msg
// DO NOT EDIT!


#ifndef DIFFBOT_MSGS_MESSAGE_WHEELSCMDSTAMPED_H
#define DIFFBOT_MSGS_MESSAGE_WHEELSCMDSTAMPED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <diffbot_msgs/WheelsCmd.h>

namespace diffbot_msgs
{
template <class ContainerAllocator>
struct WheelsCmdStamped_
{
  typedef WheelsCmdStamped_<ContainerAllocator> Type;

  WheelsCmdStamped_()
    : header()
    , wheels_cmd()  {
    }
  WheelsCmdStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , wheels_cmd(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::diffbot_msgs::WheelsCmd_<ContainerAllocator>  _wheels_cmd_type;
  _wheels_cmd_type wheels_cmd;





  typedef boost::shared_ptr< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> const> ConstPtr;

}; // struct WheelsCmdStamped_

typedef ::diffbot_msgs::WheelsCmdStamped_<std::allocator<void> > WheelsCmdStamped;

typedef boost::shared_ptr< ::diffbot_msgs::WheelsCmdStamped > WheelsCmdStampedPtr;
typedef boost::shared_ptr< ::diffbot_msgs::WheelsCmdStamped const> WheelsCmdStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator1> & lhs, const ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.wheels_cmd == rhs.wheels_cmd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator1> & lhs, const ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace diffbot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0a7314ac2bc5413723ab6ac388330f3c";
  }

  static const char* value(const ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0a7314ac2bc54137ULL;
  static const uint64_t static_value2 = 0x23ab6ac388330f3cULL;
};

template<class ContainerAllocator>
struct DataType< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "diffbot_msgs/WheelsCmdStamped";
  }

  static const char* value(const ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This is a message that holds commanded angular joint velocity\n"
"Header header\n"
"\n"
"# Use an array of type float32 for the two wheel joint velocities.\n"
"# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.\n"
"WheelsCmd wheels_cmd\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: diffbot_msgs/WheelsCmd\n"
"# This is a message that holds commanded angular joint velocity\n"
"# Use an array of type float32 for the two wheel joint velocities.\n"
"# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.\n"
"AngularVelocities angular_velocities\n"
"================================================================================\n"
"MSG: diffbot_msgs/AngularVelocities\n"
"# This is a message that holds commanded angular joint velocity\n"
"# Use an array of type float32 for the two wheel joint velocities.\n"
"# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.\n"
"float32[] joint\n"
;
  }

  static const char* value(const ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.wheels_cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WheelsCmdStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::diffbot_msgs::WheelsCmdStamped_<ContainerAllocator>& v)
  {
    if (false || !indent.empty())
      s << std::endl;
    s << indent << "header: ";
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    if (true || !indent.empty())
      s << std::endl;
    s << indent << "wheels_cmd: ";
    Printer< ::diffbot_msgs::WheelsCmd_<ContainerAllocator> >::stream(s, indent + "  ", v.wheels_cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DIFFBOT_MSGS_MESSAGE_WHEELSCMDSTAMPED_H
