.class Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/Kangaroo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KangarooSponge"
.end annotation


# static fields
.field private static final KeccakRoundConstants:[J


# instance fields
.field private bytesInQueue:I

.field private squeezing:Z

.field private final theQueue:[B

.field private final theRateBytes:I

.field private final theRounds:I

.field private final theState:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.3E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method

.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    shl-int/lit8 p1, p1, 0x1

    rsub-int p1, p1, 0x640

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iput p2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->initSponge()V

    return-void
.end method

.method private KangarooAbsorb([BI)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    shr-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    aget-wide v3, v2, v1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooPermutation()V

    return-void
.end method

.method private KangarooExtract()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    shr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    return-void
.end method

.method private KangarooPermutation()V
    .locals 94

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/4 v8, 0x2

    aget-wide v9, v1, v8

    const/4 v11, 0x3

    aget-wide v12, v1, v11

    const/4 v14, 0x4

    aget-wide v15, v1, v14

    const/16 v17, 0x5

    aget-wide v18, v1, v17

    const/16 v20, 0x6

    aget-wide v21, v1, v20

    const/16 v23, 0x7

    aget-wide v24, v1, v23

    const/16 v26, 0x8

    aget-wide v27, v1, v26

    const/16 v29, 0x9

    aget-wide v30, v1, v29

    const/16 v32, 0xa

    aget-wide v33, v1, v32

    const/16 v35, 0xb

    aget-wide v36, v1, v35

    const/16 v38, 0xc

    aget-wide v39, v1, v38

    const/16 v41, 0xd

    aget-wide v42, v1, v41

    const/16 v44, 0xe

    aget-wide v45, v1, v44

    const/16 v47, 0xf

    aget-wide v48, v1, v47

    const/16 v50, 0x10

    aget-wide v50, v1, v50

    const/16 v52, 0x11

    aget-wide v52, v1, v52

    const/16 v54, 0x12

    aget-wide v55, v1, v54

    const/16 v57, 0x13

    aget-wide v58, v1, v57

    const/16 v60, 0x14

    aget-wide v61, v1, v60

    const/16 v63, 0x15

    aget-wide v64, v1, v63

    const/16 v66, 0x16

    aget-wide v66, v1, v66

    const/16 v68, 0x17

    aget-wide v69, v1, v68

    const/16 v71, 0x18

    aget-wide v71, v1, v71

    move/from16 v73, v2

    sget-object v2, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

    array-length v2, v2

    move/from16 v74, v5

    iget v5, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    sub-int/2addr v2, v5

    move/from16 v75, v8

    move/from16 v5, v73

    :goto_0
    iget v8, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    if-ge v5, v8, :cond_0

    xor-long v76, v3, v18

    xor-long v76, v76, v33

    xor-long v76, v76, v48

    xor-long v76, v76, v61

    xor-long v78, v6, v21

    xor-long v78, v78, v36

    xor-long v78, v78, v50

    xor-long v78, v78, v64

    xor-long v80, v9, v24

    xor-long v80, v80, v39

    xor-long v80, v80, v52

    xor-long v80, v80, v66

    xor-long v82, v12, v27

    xor-long v82, v82, v42

    xor-long v82, v82, v55

    xor-long v82, v82, v69

    xor-long v84, v15, v30

    xor-long v84, v84, v45

    xor-long v84, v84, v58

    xor-long v84, v84, v71

    shl-long v86, v78, v74

    const/4 v8, -0x1

    ushr-long v88, v78, v8

    or-long v86, v86, v88

    xor-long v86, v86, v84

    shl-long v88, v80, v74

    ushr-long v90, v80, v8

    or-long v88, v88, v90

    xor-long v88, v88, v76

    shl-long v90, v82, v74

    ushr-long v92, v82, v8

    or-long v90, v90, v92

    xor-long v78, v90, v78

    shl-long v90, v84, v74

    ushr-long v84, v84, v8

    or-long v84, v90, v84

    xor-long v80, v84, v80

    shl-long v84, v76, v74

    ushr-long v76, v76, v8

    or-long v76, v84, v76

    xor-long v76, v76, v82

    xor-long v3, v3, v86

    xor-long v18, v18, v86

    xor-long v33, v33, v86

    xor-long v48, v48, v86

    xor-long v61, v61, v86

    xor-long v6, v6, v88

    xor-long v21, v21, v88

    xor-long v36, v36, v88

    xor-long v50, v50, v88

    xor-long v64, v64, v88

    xor-long v8, v9, v78

    xor-long v24, v24, v78

    xor-long v39, v39, v78

    xor-long v52, v52, v78

    xor-long v66, v66, v78

    xor-long v12, v12, v80

    xor-long v27, v27, v80

    xor-long v42, v42, v80

    xor-long v55, v55, v80

    xor-long v69, v69, v80

    xor-long v15, v15, v76

    xor-long v30, v30, v76

    xor-long v45, v45, v76

    xor-long v58, v58, v76

    xor-long v71, v71, v76

    shl-long v76, v6, v74

    const/16 v10, 0x3f

    ushr-long/2addr v6, v10

    or-long v6, v76, v6

    const/16 v10, 0x2c

    shl-long v76, v21, v10

    ushr-long v21, v21, v60

    move/from16 v78, v11

    move-wide/from16 v79, v12

    or-long v11, v76, v21

    shl-long v21, v30, v60

    ushr-long v30, v30, v10

    move/from16 v76, v14

    move-wide/from16 v81, v15

    or-long v14, v21, v30

    const/16 v10, 0x3d

    shl-long v21, v66, v10

    ushr-long v30, v66, v78

    move-object/from16 v77, v1

    or-long v0, v21, v30

    const/16 v10, 0x27

    shl-long v21, v45, v10

    const/16 v10, 0x19

    ushr-long v30, v45, v10

    move-wide/from16 v83, v8

    or-long v8, v21, v30

    shl-long v21, v61, v54

    const/16 v10, 0x2e

    ushr-long v30, v61, v10

    move-wide/from16 v45, v8

    or-long v8, v21, v30

    const/16 v10, 0x3e

    shl-long v21, v83, v10

    ushr-long v30, v83, v75

    move/from16 v83, v5

    move-wide/from16 v61, v6

    or-long v5, v21, v30

    const/16 v7, 0x2b

    shl-long v21, v39, v7

    ushr-long v30, v39, v63

    move-wide/from16 v39, v5

    or-long v5, v21, v30

    const/16 v7, 0x19

    shl-long v21, v42, v7

    const/16 v7, 0x27

    ushr-long v30, v42, v7

    move-wide/from16 v42, v8

    or-long v7, v21, v30

    shl-long v9, v58, v26

    const/16 v13, 0x38

    ushr-long v21, v58, v13

    or-long v9, v9, v21

    shl-long v21, v69, v13

    ushr-long v30, v69, v26

    move-wide/from16 v58, v9

    or-long v9, v21, v30

    const/16 v13, 0x29

    shl-long v21, v48, v13

    ushr-long v30, v48, v68

    move-wide/from16 v48, v9

    or-long v9, v21, v30

    const/16 v13, 0x1b

    shl-long v21, v81, v13

    const/16 v13, 0x25

    ushr-long v30, v81, v13

    move-wide/from16 v66, v9

    or-long v9, v21, v30

    shl-long v21, v71, v44

    const/16 v13, 0x32

    ushr-long v30, v71, v13

    move-wide/from16 v69, v9

    or-long v9, v21, v30

    shl-long v21, v64, v75

    const/16 v13, 0x3e

    ushr-long v30, v64, v13

    move-wide/from16 v64, v7

    or-long v7, v21, v30

    const/16 v13, 0x37

    shl-long v21, v27, v13

    ushr-long v27, v27, v29

    move-wide/from16 v30, v7

    or-long v7, v21, v27

    const/16 v13, 0x2d

    shl-long v21, v50, v13

    ushr-long v27, v50, v57

    move-wide/from16 v50, v7

    or-long v7, v21, v27

    const/16 v13, 0x24

    shl-long v21, v18, v13

    const/16 v13, 0x1c

    ushr-long v18, v18, v13

    move-wide/from16 v27, v0

    or-long v0, v21, v18

    shl-long v18, v79, v13

    const/16 v13, 0x24

    ushr-long v21, v79, v13

    move-wide/from16 v71, v0

    or-long v0, v18, v21

    shl-long v18, v55, v63

    const/16 v13, 0x2b

    ushr-long v21, v55, v13

    move-wide/from16 v55, v0

    or-long v0, v18, v21

    shl-long v18, v52, v47

    const/16 v13, 0x31

    ushr-long v21, v52, v13

    move-wide/from16 v52, v7

    or-long v7, v18, v21

    shl-long v18, v36, v32

    const/16 v13, 0x36

    ushr-long v21, v36, v13

    move-wide/from16 v36, v7

    or-long v7, v18, v21

    shl-long v18, v24, v20

    const/16 v13, 0x3a

    ushr-long v21, v24, v13

    move-wide/from16 v24, v7

    or-long v7, v18, v21

    shl-long v18, v33, v78

    const/16 v13, 0x3d

    ushr-long v21, v33, v13

    move-wide/from16 v33, v7

    or-long v7, v18, v21

    move-wide/from16 v18, v7

    not-long v7, v11

    and-long/2addr v7, v5

    xor-long/2addr v7, v3

    move-wide/from16 v21, v7

    not-long v7, v5

    and-long/2addr v7, v0

    xor-long/2addr v7, v11

    move-wide/from16 v79, v5

    not-long v5, v0

    and-long/2addr v5, v9

    xor-long v5, v79, v5

    move-wide/from16 v79, v0

    not-long v0, v9

    and-long/2addr v0, v3

    xor-long v0, v79, v0

    not-long v3, v3

    and-long/2addr v3, v11

    xor-long/2addr v3, v9

    not-long v9, v14

    and-long v9, v9, v18

    xor-long v9, v55, v9

    move-wide/from16 v11, v18

    move-wide/from16 v18, v0

    not-long v0, v11

    and-long v0, v0, v52

    xor-long/2addr v0, v14

    move-wide/from16 v79, v0

    move/from16 v81, v2

    move-wide/from16 v0, v52

    move-wide/from16 v52, v3

    not-long v2, v0

    and-long v2, v2, v27

    xor-long/2addr v2, v11

    move-wide/from16 v11, v27

    move-wide/from16 v27, v0

    not-long v0, v11

    and-long v0, v0, v55

    xor-long v27, v27, v0

    move-wide/from16 v0, v55

    not-long v0, v0

    and-long/2addr v0, v14

    xor-long/2addr v0, v11

    move-wide/from16 v11, v33

    not-long v13, v11

    and-long v13, v13, v64

    xor-long v33, v61, v13

    move-wide v15, v0

    move-wide/from16 v13, v64

    not-long v0, v13

    and-long v0, v0, v58

    xor-long/2addr v0, v11

    move-wide/from16 v55, v0

    move-wide/from16 v0, v58

    move-wide/from16 v58, v2

    not-long v2, v0

    and-long v2, v2, v42

    xor-long/2addr v2, v13

    move-wide/from16 v13, v42

    move-wide/from16 v42, v0

    not-long v0, v13

    and-long v0, v0, v61

    xor-long v42, v42, v0

    move-wide/from16 v0, v61

    not-long v0, v0

    and-long/2addr v0, v11

    xor-long/2addr v0, v13

    move-wide/from16 v11, v71

    not-long v13, v11

    and-long v13, v13, v24

    xor-long v13, v69, v13

    move-wide/from16 v61, v0

    move-wide/from16 v0, v24

    move-wide/from16 v24, v2

    not-long v2, v0

    and-long v2, v2, v36

    xor-long/2addr v2, v11

    move-wide/from16 v64, v0

    move-wide/from16 v0, v36

    move-wide/from16 v36, v2

    not-long v2, v0

    and-long v2, v2, v48

    xor-long v2, v64, v2

    move-wide/from16 v64, v0

    move-wide/from16 v0, v48

    move-wide/from16 v48, v2

    not-long v2, v0

    and-long v2, v2, v69

    xor-long v2, v64, v2

    move-wide/from16 v64, v0

    move-wide/from16 v0, v69

    not-long v0, v0

    and-long/2addr v0, v11

    xor-long v0, v64, v0

    move-wide/from16 v11, v50

    move-wide/from16 v50, v0

    not-long v0, v11

    and-long v0, v0, v45

    xor-long v0, v39, v0

    move-wide/from16 v64, v0

    move-wide/from16 v0, v45

    move-wide/from16 v45, v2

    not-long v2, v0

    and-long v2, v2, v66

    xor-long/2addr v2, v11

    move-wide/from16 v69, v0

    move-wide/from16 v0, v66

    move-wide/from16 v66, v2

    not-long v2, v0

    and-long v2, v2, v30

    xor-long v2, v69, v2

    move-wide/from16 v69, v0

    move-wide/from16 v0, v30

    move-wide/from16 v30, v2

    not-long v2, v0

    and-long v2, v2, v39

    xor-long v69, v69, v2

    move-wide/from16 v2, v39

    not-long v2, v2

    and-long/2addr v2, v11

    xor-long v71, v0, v2

    sget-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

    add-int v2, v81, v83

    aget-wide v1, v0, v2

    xor-long v3, v21, v1

    add-int/lit8 v0, v83, 0x1

    move-wide/from16 v39, v24

    move-wide/from16 v24, v58

    move-object/from16 v1, v77

    move/from16 v11, v78

    move-wide/from16 v21, v79

    move/from16 v2, v81

    move-wide/from16 v58, v50

    move-wide/from16 v50, v36

    move-wide/from16 v36, v55

    move-wide/from16 v55, v45

    move-wide/from16 v45, v61

    move-wide/from16 v61, v64

    move-wide/from16 v64, v66

    move-wide/from16 v66, v30

    move-wide/from16 v30, v15

    move-wide/from16 v15, v52

    move-wide/from16 v52, v48

    move-wide/from16 v48, v13

    move-wide/from16 v12, v18

    move/from16 v14, v76

    move-wide/from16 v18, v9

    move-wide v9, v5

    move-wide v6, v7

    move v5, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v77, v1

    move/from16 v78, v11

    move/from16 v76, v14

    aput-wide v3, v77, v73

    aput-wide v6, v77, v74

    aput-wide v9, v77, v75

    aput-wide v12, v77, v78

    aput-wide v15, v77, v76

    aput-wide v18, v77, v17

    aput-wide v21, v77, v20

    aput-wide v24, v77, v23

    aput-wide v27, v77, v26

    aput-wide v30, v77, v29

    aput-wide v33, v77, v32

    aput-wide v36, v77, v35

    aput-wide v39, v77, v38

    aput-wide v42, v77, v41

    aput-wide v45, v77, v44

    aput-wide v48, v77, v47

    const/16 v0, 0x10

    aput-wide v50, v77, v0

    const/16 v0, 0x11

    aput-wide v52, v77, v0

    aput-wide v55, v77, v54

    aput-wide v58, v77, v57

    aput-wide v61, v77, v60

    aput-wide v64, v77, v63

    const/16 v0, 0x16

    aput-wide v66, v77, v0

    aput-wide v69, v77, v68

    const/16 v0, 0x18

    aput-wide v71, v77, v0

    return-void
.end method

.method private absorb([BII)V
    .locals 6

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_3

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    :cond_0
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    if-nez v2, :cond_2

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    sub-int v3, p3, v3

    if-gt v1, v3, :cond_2

    :cond_1
    add-int v2, p2, v1

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    add-int/2addr v1, v2

    sub-int v2, p3, v2

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_2
    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    sub-int/2addr v3, v2

    sub-int v2, p3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, p2, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb while squeezing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    return p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeeze([BII)V

    return-void
.end method

.method static synthetic access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->absorb([BII)V

    return-void
.end method

.method static synthetic access$400(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->initSponge()V

    return-void
.end method

.method static synthetic access$500(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->padAndSwitchToSqueezingPhase()V

    return-void
.end method

.method private initSponge()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    return-void
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-byte v4, v0, v1

    xor-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooExtract()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    return-void
.end method

.method private squeeze([BII)V
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->padAndSwitchToSqueezingPhase()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooPermutation()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooExtract()V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int v2, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int/2addr v3, v4

    add-int v4, p2, v0

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method
