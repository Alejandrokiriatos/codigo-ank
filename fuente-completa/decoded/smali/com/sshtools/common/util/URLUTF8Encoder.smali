.class public Lcom/sshtools/common/util/URLUTF8Encoder;
.super Ljava/lang/Object;
.source "URLUTF8Encoder.java"


# static fields
.field static final hex:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x100

    .line 32
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "%01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "%02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "%03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "%04"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "%05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "%06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "%07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "%08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "%09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "%0A"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "%0B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "%0C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "%0D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "%0E"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "%0F"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "%10"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "%11"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "%12"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "%13"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "%14"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "%15"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "%16"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "%17"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "%18"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "%19"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "%1A"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "%1B"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "%1C"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "%1D"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "%1E"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "%1F"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "%20"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "%21"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "%22"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "%23"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "%24"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "%25"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "%26"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "%27"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "%28"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "%29"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "%2A"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "%2B"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "%2C"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "%2D"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "%2E"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "%2F"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "%30"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "%31"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "%32"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "%33"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "%34"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "%35"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "%36"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "%37"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "%38"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "%39"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "%3A"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "%3B"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "%3C"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "%3D"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "%3E"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "%3F"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "%40"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "%41"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "%42"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "%43"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "%44"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "%45"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "%46"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "%47"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "%48"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "%49"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "%4A"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "%4B"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "%4C"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "%4D"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "%4E"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "%4F"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "%50"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "%51"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "%52"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "%53"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "%54"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "%55"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "%56"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "%57"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "%58"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "%59"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "%5A"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "%5B"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "%5C"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "%5D"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "%5E"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "%5F"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "%60"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "%61"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "%62"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "%63"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "%64"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "%65"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "%66"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "%67"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "%68"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "%69"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "%6A"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "%6B"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "%6C"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "%6D"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "%6E"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "%6F"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "%70"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "%71"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "%72"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "%73"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "%74"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "%75"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "%76"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "%77"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "%78"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "%79"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "%7A"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "%7B"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "%7C"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "%7D"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "%7E"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "%7F"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "%80"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "%81"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "%82"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "%83"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "%84"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "%85"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "%86"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "%87"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "%88"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "%89"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "%8A"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "%8B"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "%8C"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "%8D"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "%8E"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "%8F"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "%90"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "%91"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "%92"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "%93"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "%94"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "%95"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "%96"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "%97"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "%98"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "%99"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "%9A"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "%9B"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "%9C"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "%9D"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "%9E"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "%9F"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "%A0"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "%A1"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "%A2"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "%A3"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "%A4"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "%A5"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "%A6"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "%A7"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "%A8"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "%A9"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "%AA"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "%AB"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "%AC"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "%AD"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "%AE"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "%AF"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "%B0"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "%B1"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "%B2"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "%B3"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "%B4"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "%B5"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "%B6"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "%B7"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "%B8"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "%B9"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "%BA"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "%BB"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "%BC"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "%BD"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "%BE"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "%BF"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "%C0"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "%C1"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "%C2"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "%C3"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "%C4"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "%C5"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "%C6"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "%C7"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "%C8"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "%C9"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "%CA"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "%CB"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "%CC"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "%CD"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "%CE"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "%CF"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "%D0"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "%D1"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "%D2"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "%D3"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "%D4"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "%D5"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "%D6"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "%D7"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "%D8"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "%D9"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "%DA"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "%DB"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "%DC"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "%DD"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "%DE"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "%DF"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "%E0"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "%E1"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "%E2"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "%E3"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "%E4"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "%E5"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "%E6"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "%E7"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "%E8"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "%E9"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "%EA"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "%EB"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "%EC"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "%ED"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "%EE"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "%EF"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "%F0"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "%F1"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "%F2"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "%F3"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "%F4"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "%F5"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "%F6"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "%F7"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "%F8"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "%F9"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "%FA"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "%FB"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "%FC"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "%FD"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "%FE"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "%FF"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sshtools/common/util/URLUTF8Encoder;->hex:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_b

    .line 142
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    const/4 v7, 0x4

    if-eq v5, v6, :cond_1

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_0

    goto :goto_3

    :cond_0
    const/16 v5, 0x20

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v2, 0x1

    .line 144
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-char v6, v5

    .line 145
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v5, v5, -0x30

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    add-int/lit8 v5, v5, -0x57

    :goto_1
    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v2, v2, 0x2

    .line 146
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v8, v6

    .line 147
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v6, v6, -0x30

    goto :goto_2

    :cond_3
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    add-int/lit8 v6, v6, -0x57

    :goto_2
    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v5, v7

    or-int/2addr v5, v6

    :goto_3
    and-int/lit16 v6, v5, 0xc0

    const/16 v8, 0x80

    const/4 v9, 0x1

    if-ne v6, v8, :cond_4

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_a

    int-to-char v5, v3

    .line 160
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_5

    int-to-char v5, v5

    .line 162
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    and-int/lit16 v3, v5, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_6

    and-int/lit8 v3, v5, 0x1f

    move v4, v9

    goto :goto_4

    :cond_6
    and-int/lit16 v3, v5, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_7

    and-int/lit8 v3, v5, 0xf

    const/4 v4, 0x2

    goto :goto_4

    :cond_7
    and-int/lit16 v3, v5, 0xf8

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_8

    and-int/lit8 v3, v5, 0x7

    const/4 v4, 0x3

    goto :goto_4

    :cond_8
    and-int/lit16 v3, v5, 0xfc

    const/16 v4, 0xf8

    if-ne v3, v4, :cond_9

    and-int/lit8 v3, v5, 0x3

    move v4, v7

    goto :goto_4

    :cond_9
    and-int/lit8 v3, v5, 0x1

    const/4 v4, 0x5

    :cond_a
    :goto_4
    add-int/2addr v2, v9

    goto/16 :goto_0

    .line 181
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    .line 104
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    if-nez p1, :cond_0

    int-to-char v3, v3

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_0
    const/16 v4, 0x41

    if-gt v4, v3, :cond_1

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1

    int-to-char v3, v3

    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_1
    const/16 v4, 0x61

    if-gt v4, v3, :cond_2

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_2

    int-to-char v3, v3

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x30

    if-gt v4, v3, :cond_3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_3

    int-to-char v3, v3

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_3
    const/16 v4, 0x20

    if-ne v3, v4, :cond_4

    .line 117
    const-string v3, "%20"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_4
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_8

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_8

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_8

    const/16 v4, 0x21

    if-eq v3, v4, :cond_8

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_8

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_8

    const/16 v4, 0x27

    if-eq v3, v4, :cond_8

    const/16 v4, 0x28

    if-eq v3, v4, :cond_8

    const/16 v4, 0x29

    if-ne v3, v4, :cond_5

    goto :goto_1

    :cond_5
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_6

    .line 122
    sget-object v4, Lcom/sshtools/common/util/URLUTF8Encoder;->hex:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_7

    .line 124
    sget-object v4, Lcom/sshtools/common/util/URLUTF8Encoder;->hex:[Ljava/lang/String;

    shr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0xc0

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    .line 125
    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 127
    :cond_7
    sget-object v4, Lcom/sshtools/common/util/URLUTF8Encoder;->hex:[Ljava/lang/String;

    shr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0xe0

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    .line 128
    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    .line 129
    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    :goto_1
    int-to-char v3, v3

    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 132
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
