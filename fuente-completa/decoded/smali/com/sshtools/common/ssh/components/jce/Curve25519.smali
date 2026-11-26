.class public Lcom/sshtools/common/ssh/components/jce/Curve25519;
.super Ljava/lang/Object;
.source "Curve25519.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;
    }
.end annotation


# static fields
.field private static final BASE_2Y:Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

.field private static final BASE_R2Y:Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

.field public static final KEY_SIZE:I = 0x20

.field public static final ORDER:[B

.field private static final ORDER_TIMES_8:[B

.field private static final P25:I = 0x1ffffff

.field private static final P26:I = 0x3ffffff

.field public static final PRIME:[B

.field public static final ZERO:[B


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const/16 v0, 0x20

    .line 31
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sshtools/common/ssh/components/jce/Curve25519;->ZERO:[B

    .line 37
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sshtools/common/ssh/components/jce/Curve25519;->PRIME:[B

    .line 49
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/sshtools/common/ssh/components/jce/Curve25519;->ORDER:[B

    .line 911
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/Curve25519;->ORDER_TIMES_8:[B

    .line 923
    new-instance v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    const-wide/32 v18, 0x3c8ebef

    const-wide/32 v20, 0xfa8f32

    const-wide/32 v2, 0x262583b

    const-wide/32 v4, 0x11d2ec0

    const-wide/32 v6, 0x3937585

    const-wide/32 v8, 0x192839

    const-wide/32 v10, 0x36e1594

    const-wide/32 v12, 0x16e5d66

    const-wide/32 v14, 0x122d388

    const-wide/32 v16, 0x52c7f8

    invoke-direct/range {v1 .. v21}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>(JJJJJJJJJJ)V

    sput-object v1, Lcom/sshtools/common/ssh/components/jce/Curve25519;->BASE_2Y:Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 927
    new-instance v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    const-wide/32 v19, 0x2637055

    const-wide/32 v21, 0x5f00d4

    const-wide/16 v3, 0x1670

    const-wide/32 v5, 0x7c8650

    const-wide/32 v7, 0x491a6d

    const-wide/32 v9, 0xd24229

    const-wide/32 v11, 0x221359e

    const-wide/32 v13, 0xbf5d19

    const-wide/32 v15, 0x2ed3a0b

    const-wide/32 v17, 0x1ca7caf

    invoke-direct/range {v2 .. v22}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>(JJJJJJJJJJ)V

    sput-object v2, Lcom/sshtools/common/ssh/components/jce/Curve25519;->BASE_R2Y:Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x13t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x7ft
    .end array-data

    :array_2
    .array-data 1
        -0x13t
        -0x2dt
        -0xbt
        0x5ct
        0x1at
        0x63t
        0x12t
        0x58t
        -0x2at
        -0x64t
        -0x9t
        -0x5et
        -0x22t
        -0x7t
        -0x22t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        -0x61t
        -0x52t
        -0x19t
        -0x2et
        0x18t
        -0x6dt
        -0x40t
        -0x4et
        -0x1at
        -0x44t
        0x17t
        -0xbt
        -0x32t
        -0x9t
        -0x5at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x80t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V
    .locals 4

    .line 519
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    .line 520
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    .line 521
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    .line 522
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    .line 523
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    iget-wide p1, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    return-void
.end method

.method public static final clamp([B)V
    .locals 2

    const/16 v0, 0x1f

    .line 67
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    .line 68
    aput-byte v1, p0, v0

    const/4 v0, 0x0

    .line 69
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xf8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method private static final core([B[B[B[B)V
    .locals 17

    move-object/from16 v0, p3

    .line 827
    new-instance v6, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    .line 828
    new-instance v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    .line 829
    new-instance v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    .line 830
    new-instance v3, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    .line 831
    new-instance v4, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v4}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    const/4 v5, 0x2

    .line 833
    new-array v7, v5, [Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    new-instance v8, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v8}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v8}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    const/4 v10, 0x1

    aput-object v8, v7, v10

    .line 834
    new-array v8, v5, [Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    new-instance v5, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v5, v8, v9

    new-instance v5, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v5, v8, v10

    if-eqz v0, :cond_0

    .line 839
    invoke-static {v6, v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->unpack(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;[B)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 841
    invoke-static {v6, v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->set(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 844
    :goto_0
    aget-object v0, v7, v9

    invoke-static {v0, v10}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->set(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 845
    aget-object v0, v8, v9

    invoke-static {v0, v9}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->set(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 848
    aget-object v0, v7, v10

    invoke-static {v0, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->cpy(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 849
    aget-object v0, v8, v10

    invoke-static {v0, v10}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->set(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    const/16 v11, 0x20

    move v0, v11

    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-eqz v0, :cond_3

    if-nez v5, :cond_1

    move v12, v9

    goto :goto_2

    :cond_1
    move v12, v5

    :goto_2
    const/16 v0, 0x8

    :goto_3
    add-int/lit8 v13, v0, -0x1

    if-eqz v0, :cond_2

    .line 857
    aget-byte v0, p2, v12

    and-int/lit16 v5, v0, 0xff

    shr-int/2addr v5, v13

    and-int/2addr v5, v10

    and-int/lit16 v0, v0, 0xff

    not-int v0, v0

    shr-int/2addr v0, v13

    and-int/2addr v0, v10

    .line 859
    aget-object v14, v7, v0

    .line 860
    aget-object v0, v8, v0

    .line 861
    aget-object v15, v7, v5

    .line 862
    aget-object v5, v8, v5

    .line 866
    invoke-static {v1, v2, v14, v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mont_prep(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 867
    invoke-static {v3, v4, v15, v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mont_prep(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    move-object/from16 v16, v5

    move-object v5, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v14

    move-object/from16 v14, v16

    .line 868
    invoke-static/range {v0 .. v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mont_add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    move-object v5, v14

    move-object v4, v15

    .line 869
    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mont_dbl(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v13

    goto :goto_3

    :cond_2
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v2, v1

    move-object v1, v0

    move v0, v12

    goto :goto_1

    :cond_3
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 873
    aget-object v3, v8, v9

    invoke-static {v0, v3, v9}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->recip(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 874
    aget-object v3, v7, v9

    invoke-static {v6, v3, v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    move-object/from16 v3, p0

    .line 875
    invoke-static {v6, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->pack(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;[B)V

    if-eqz p1, :cond_5

    .line 879
    invoke-static {v1, v0, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->x_to_y2(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 880
    aget-object v3, v8, v10

    invoke-static {v2, v3, v9}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->recip(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 881
    aget-object v3, v7, v10

    invoke-static {v1, v3, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 882
    invoke-static {v1, v1, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 883
    iget-wide v3, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    const-wide/32 v7, 0x76d0f

    add-long/2addr v3, v7

    iput-wide v3, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    .line 884
    iget-wide v3, v6, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    const-wide/16 v7, 0x9

    sub-long/2addr v3, v7

    iput-wide v3, v6, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    .line 885
    invoke-static {v2, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 886
    invoke-static {v6, v1, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 887
    invoke-static {v6, v6, v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sub(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 888
    iget-wide v1, v6, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    const-wide/32 v3, 0x25981c8

    sub-long/2addr v1, v3

    iput-wide v1, v6, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    .line 889
    sget-object v1, Lcom/sshtools/common/ssh/components/jce/Curve25519;->BASE_R2Y:Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-static {v0, v6, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 890
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->is_negative(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 891
    invoke-static/range {p1 .. p2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->cpy32([B[B)V

    move-object/from16 v0, p1

    goto :goto_4

    .line 893
    :cond_4
    sget-object v1, Lcom/sshtools/common/ssh/components/jce/Curve25519;->ORDER_TIMES_8:[B

    const/16 v4, 0x20

    const/4 v5, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mula_small([B[BI[BII)I

    .line 900
    :goto_4
    new-array v1, v11, [B

    const/16 v2, 0x40

    .line 901
    new-array v3, v2, [B

    .line 902
    new-array v2, v2, [B

    .line 903
    sget-object v4, Lcom/sshtools/common/ssh/components/jce/Curve25519;->ORDER:[B

    invoke-static {v1, v4}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->cpy32([B[B)V

    .line 904
    invoke-static {v3, v2, v0, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->egcd32([B[B[B[B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->cpy32([B[B)V

    const/16 v1, 0x1f

    .line 905
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_5

    move-object v3, v4

    const/16 v4, 0x20

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p1

    .line 906
    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mula_small([B[BI[BII)I

    :cond_5
    return-void
.end method

.method private static final cpy(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V
    .locals 2

    .line 499
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    .line 500
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    .line 501
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    .line 502
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    .line 503
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    return-void
.end method

.method private static final cpy32([B[B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 309
    aget-byte v1, p1, v0

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final curve([B[B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->core([B[B[B[B)V

    return-void
.end method

.method private static final divmod([B[BI[BI)V
    .locals 12

    move/from16 v4, p4

    add-int/lit8 v6, v4, -0x1

    .line 350
    aget-byte v0, p3, v6

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v4, v8, :cond_0

    add-int/lit8 v1, v4, -0x2

    .line 352
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :cond_0
    move v9, v0

    move v10, v7

    :goto_0
    add-int/lit8 v11, p2, -0x1

    if-lt p2, v4, :cond_2

    shl-int/lit8 v0, v10, 0x10

    .line 355
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    if-lez v11, :cond_1

    add-int/lit8 p2, p2, -0x2

    .line 357
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    or-int/2addr v0, p2

    .line 359
    :cond_1
    div-int p2, v0, v9

    sub-int v0, v11, v4

    add-int/lit8 v2, v0, 0x1

    neg-int v5, p2

    move-object v1, p1

    move-object v0, p1

    move-object v3, p3

    .line 360
    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mula_small([B[BI[BII)I

    move-result v1

    add-int/2addr v10, v1

    add-int/2addr p2, v10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 361
    aput-byte p2, p0, v2

    neg-int v5, v10

    move-object v1, p1

    move/from16 v4, p4

    .line 362
    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mula_small([B[BI[BII)I

    .line 363
    aget-byte p2, p1, v11

    and-int/lit16 v10, p2, 0xff

    .line 364
    aput-byte v7, p1, v11

    move p2, v11

    goto :goto_0

    :cond_2
    int-to-byte p0, v10

    .line 366
    aput-byte p0, p1, v6

    return-void
.end method

.method private static final egcd32([B[B[B[B)[B
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 383
    aput-byte v0, p1, v1

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 384
    aput-byte v1, p0, v0

    .line 385
    invoke-static {p2, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->numsize([BI)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 388
    :cond_1
    new-array v3, v2, [B

    :goto_1
    sub-int v4, v2, v0

    add-int/2addr v4, v1

    .line 391
    invoke-static {v3, p3, v2, p2, v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->divmod([B[BI[BI)V

    .line 392
    invoke-static {p3, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->numsize([BI)I

    move-result v2

    if-nez v2, :cond_2

    return-object p0

    :cond_2
    const/4 v5, -0x1

    .line 395
    invoke-static {p1, p0, v3, v4, v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mula32([B[B[BII)I

    sub-int v4, v0, v2

    add-int/2addr v4, v1

    .line 398
    invoke-static {v3, p2, v0, p3, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->divmod([B[BI[BI)V

    .line 399
    invoke-static {p2, v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->numsize([BI)I

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    return-object p1

    .line 402
    :cond_3
    invoke-static {p0, p1, v3, v4, v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mula32([B[B[BII)I

    goto :goto_1
.end method

.method private static final is_negative(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)I
    .locals 6

    .line 758
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->is_overflow(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private static final is_overflow(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Z
    .locals 7

    .line 437
    iget-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    const-wide/32 v2, 0x3ffffec

    cmp-long v0, v0, v2

    const-wide/32 v1, 0x1ffffff

    if-lez v0, :cond_0

    iget-wide v3, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    iget-wide v5, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    and-long/2addr v3, v5

    iget-wide v5, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    and-long/2addr v3, v5

    iget-wide v5, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    and-long/2addr v3, v5

    iget-wide v5, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    iget-wide v5, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    and-long/2addr v3, v5

    iget-wide v5, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    and-long/2addr v3, v5

    iget-wide v5, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    and-long/2addr v3, v5

    const-wide/32 v5, 0x3ffffff

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v3, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    cmp-long p0, v3, v1

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static final keygen([B[B[B)V
    .locals 1

    .line 81
    invoke-static {p2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->clamp([B)V

    const/4 v0, 0x0

    .line 82
    invoke-static {p0, p1, p2, v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->core([B[B[B[B)V

    return-void
.end method

.method private static final mont_add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V
    .locals 0

    .line 791
    invoke-static {p4, p1, p2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 792
    invoke-static {p5, p0, p3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 793
    invoke-static {p0, p4, p5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 794
    invoke-static {p1, p4, p5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sub(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 795
    invoke-static {p4, p0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 796
    invoke-static {p0, p1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 797
    invoke-static {p5, p0, p6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    return-void
.end method

.method private static final mont_dbl(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V
    .locals 0

    .line 805
    invoke-static {p0, p2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 806
    invoke-static {p1, p3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 807
    invoke-static {p4, p0, p1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 808
    invoke-static {p1, p0, p1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sub(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    const-wide/32 p2, 0x1db41

    .line 809
    invoke-static {p5, p1, p2, p3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul_small(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;J)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 810
    invoke-static {p0, p0, p5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 811
    invoke-static {p5, p0, p1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    return-void
.end method

.method private static final mont_prep(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V
    .locals 0

    .line 780
    invoke-static {p0, p2, p3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 781
    invoke-static {p1, p2, p3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sub(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    return-void
.end method

.method private static final mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;
    .locals 57

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 572
    iget-wide v3, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    iget-wide v5, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    iget-wide v7, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    iget-wide v9, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    iget-wide v11, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    .line 573
    iget-wide v13, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    move-wide v15, v3

    iget-wide v3, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    move-wide/from16 v17, v3

    iget-wide v3, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    move-wide/from16 v19, v3

    iget-wide v3, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    move-wide/from16 v21, v3

    iget-wide v3, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    move-wide/from16 v23, v3

    .line 575
    iget-wide v3, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    move-wide/from16 v25, v3

    iget-wide v3, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    move-wide/from16 v27, v3

    iget-wide v3, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    move-wide/from16 v29, v3

    iget-wide v3, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    move-wide/from16 v31, v3

    iget-wide v3, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    move-wide/from16 v33, v3

    .line 576
    iget-wide v3, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    move-wide/from16 v35, v3

    iget-wide v3, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    move-wide/from16 v37, v3

    iget-wide v3, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    move-wide/from16 v39, v3

    iget-wide v3, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    iget-wide v1, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    mul-long v41, v15, v3

    mul-long v43, v7, v37

    add-long v41, v41, v43

    mul-long v43, v11, v33

    add-long v41, v41, v43

    mul-long v43, v17, v29

    add-long v41, v41, v43

    mul-long v43, v21, v25

    add-long v41, v41, v43

    mul-long v43, v5, v39

    mul-long v45, v9, v35

    add-long v43, v43, v45

    mul-long v45, v13, v31

    add-long v43, v43, v45

    mul-long v45, v19, v27

    add-long v43, v43, v45

    const-wide/16 v45, 0x2

    mul-long v43, v43, v45

    add-long v41, v41, v43

    mul-long v43, v23, v1

    const-wide/16 v47, 0x26

    mul-long v43, v43, v47

    add-long v41, v41, v43

    const-wide/32 v43, 0x3ffffff

    move-wide/from16 p1, v1

    and-long v1, v41, v43

    .line 582
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    const/16 v1, 0x1a

    shr-long v41, v41, v1

    mul-long v49, v15, p1

    add-long v41, v41, v49

    mul-long v49, v5, v3

    add-long v41, v41, v49

    mul-long v49, v7, v39

    add-long v41, v41, v49

    mul-long v49, v9, v37

    add-long v41, v41, v49

    mul-long v49, v11, v35

    add-long v41, v41, v49

    mul-long v49, v13, v33

    add-long v41, v41, v49

    mul-long v49, v17, v31

    add-long v41, v41, v49

    mul-long v49, v19, v29

    add-long v41, v41, v49

    mul-long v49, v21, v27

    add-long v41, v41, v49

    mul-long v49, v23, v25

    add-long v41, v41, v49

    const-wide/32 v49, 0x1ffffff

    move/from16 v51, v1

    and-long v1, v41, v49

    .line 587
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    mul-long v1, v15, v25

    const/16 v52, 0x19

    shr-long v41, v41, v52

    mul-long v53, v7, v3

    add-long v41, v41, v53

    mul-long v53, v11, v37

    add-long v41, v41, v53

    mul-long v53, v17, v33

    add-long v41, v41, v53

    mul-long v53, v21, v29

    add-long v41, v41, v53

    const-wide/16 v53, 0x13

    mul-long v41, v41, v53

    add-long v1, v1, v41

    mul-long v41, v5, p1

    mul-long v55, v9, v39

    add-long v41, v41, v55

    mul-long v55, v13, v35

    add-long v41, v41, v55

    mul-long v55, v19, v31

    add-long v41, v41, v55

    mul-long v55, v23, v27

    add-long v41, v41, v55

    mul-long v41, v41, v47

    add-long v1, v1, v41

    move-wide/from16 v41, v1

    and-long v1, v41, v43

    .line 592
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    shr-long v1, v41, v51

    mul-long v41, v15, v27

    add-long v1, v1, v41

    mul-long v41, v5, v25

    add-long v1, v1, v41

    mul-long v41, v7, p1

    mul-long v55, v9, v3

    add-long v41, v41, v55

    mul-long v55, v11, v39

    add-long v41, v41, v55

    mul-long v55, v13, v37

    add-long v41, v41, v55

    mul-long v55, v17, v35

    add-long v41, v41, v55

    mul-long v55, v19, v33

    add-long v41, v41, v55

    mul-long v55, v21, v31

    add-long v41, v41, v55

    mul-long v55, v23, v29

    add-long v41, v41, v55

    mul-long v41, v41, v53

    add-long v1, v1, v41

    move-wide/from16 v41, v1

    and-long v1, v41, v49

    .line 597
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    shr-long v1, v41, v52

    mul-long v41, v15, v29

    add-long v1, v1, v41

    mul-long v41, v7, v25

    add-long v1, v1, v41

    mul-long v41, v11, v3

    mul-long v55, v17, v37

    add-long v41, v41, v55

    mul-long v55, v21, v33

    add-long v41, v41, v55

    mul-long v41, v41, v53

    add-long v1, v1, v41

    mul-long v41, v5, v27

    mul-long v41, v41, v45

    add-long v1, v1, v41

    mul-long v41, v9, p1

    mul-long v55, v13, v39

    add-long v41, v41, v55

    mul-long v55, v19, v35

    add-long v41, v41, v55

    mul-long v55, v23, v31

    add-long v41, v41, v55

    mul-long v41, v41, v47

    add-long v1, v1, v41

    move-wide/from16 v41, v1

    and-long v1, v41, v43

    .line 602
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    shr-long v1, v41, v51

    mul-long v41, v15, v31

    add-long v1, v1, v41

    mul-long v41, v5, v29

    add-long v1, v1, v41

    mul-long v41, v7, v27

    add-long v1, v1, v41

    mul-long v41, v9, v25

    add-long v1, v1, v41

    mul-long v41, v11, p1

    mul-long v55, v13, v3

    add-long v41, v41, v55

    mul-long v55, v17, v39

    add-long v41, v41, v55

    mul-long v55, v19, v37

    add-long v41, v41, v55

    mul-long v55, v21, v35

    add-long v41, v41, v55

    mul-long v55, v23, v33

    add-long v41, v41, v55

    mul-long v41, v41, v53

    add-long v1, v1, v41

    move-wide/from16 v41, v1

    and-long v1, v41, v49

    .line 607
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    shr-long v1, v41, v52

    mul-long v41, v15, v33

    add-long v1, v1, v41

    mul-long v41, v7, v29

    add-long v1, v1, v41

    mul-long v41, v11, v25

    add-long v1, v1, v41

    mul-long v41, v17, v3

    mul-long v55, v21, v37

    add-long v41, v41, v55

    mul-long v41, v41, v53

    add-long v1, v1, v41

    mul-long v41, v5, v31

    mul-long v55, v9, v27

    add-long v41, v41, v55

    mul-long v41, v41, v45

    add-long v1, v1, v41

    mul-long v41, v13, p1

    mul-long v55, v19, v39

    add-long v41, v41, v55

    mul-long v55, v23, v35

    add-long v41, v41, v55

    mul-long v41, v41, v47

    add-long v1, v1, v41

    move-wide/from16 v41, v1

    and-long v1, v41, v43

    .line 612
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    shr-long v1, v41, v51

    mul-long v41, v15, v35

    add-long v1, v1, v41

    mul-long v41, v5, v33

    add-long v1, v1, v41

    mul-long v41, v7, v31

    add-long v1, v1, v41

    mul-long v41, v9, v29

    add-long v1, v1, v41

    mul-long v41, v11, v27

    add-long v1, v1, v41

    mul-long v41, v13, v25

    add-long v1, v1, v41

    mul-long v41, v17, p1

    mul-long v55, v19, v3

    add-long v41, v41, v55

    mul-long v55, v21, v39

    add-long v41, v41, v55

    mul-long v55, v23, v37

    add-long v41, v41, v55

    mul-long v41, v41, v53

    add-long v1, v1, v41

    move-wide/from16 v41, v1

    and-long v1, v41, v49

    .line 617
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    shr-long v1, v41, v52

    mul-long v41, v15, v37

    add-long v1, v1, v41

    mul-long v41, v7, v33

    add-long v1, v1, v41

    mul-long v41, v11, v29

    add-long v1, v1, v41

    mul-long v41, v17, v25

    add-long v1, v1, v41

    mul-long v41, v21, v3

    mul-long v41, v41, v53

    add-long v1, v1, v41

    mul-long v41, v5, v35

    mul-long v55, v9, v31

    add-long v41, v41, v55

    mul-long v55, v13, v27

    add-long v41, v41, v55

    mul-long v41, v41, v45

    add-long v1, v1, v41

    mul-long v41, v19, p1

    mul-long v45, v23, v39

    add-long v41, v41, v45

    mul-long v41, v41, v47

    add-long v1, v1, v41

    move-wide/from16 v41, v1

    and-long v1, v41, v43

    .line 622
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    shr-long v1, v41, v51

    mul-long v15, v15, v39

    add-long/2addr v1, v15

    mul-long v5, v5, v37

    add-long/2addr v1, v5

    mul-long v7, v7, v35

    add-long/2addr v1, v7

    mul-long v9, v9, v33

    add-long/2addr v1, v9

    mul-long v11, v11, v31

    add-long/2addr v1, v11

    mul-long v13, v13, v29

    add-long/2addr v1, v13

    mul-long v5, v17, v27

    add-long/2addr v1, v5

    mul-long v5, v19, v25

    add-long/2addr v1, v5

    mul-long v5, v21, p1

    mul-long v3, v3, v23

    add-long/2addr v5, v3

    mul-long v5, v5, v53

    add-long/2addr v1, v5

    and-long v3, v1, v49

    .line 627
    iput-wide v3, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    shr-long v1, v1, v52

    .line 628
    iget-wide v3, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    add-long/2addr v1, v3

    and-long v3, v1, v43

    .line 629
    iput-wide v3, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    .line 630
    iget-wide v3, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    shr-long v1, v1, v51

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    return-object v0
.end method

.method private static final mul_small(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;J)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;
    .locals 10

    .line 538
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    mul-long/2addr v0, p2

    const-wide/32 v2, 0x3ffffff

    and-long v4, v0, v2

    .line 539
    iput-wide v4, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    const/16 v4, 0x1a

    shr-long/2addr v0, v4

    .line 540
    iget-wide v5, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    mul-long/2addr v5, p2

    add-long/2addr v0, v5

    const-wide/32 v5, 0x1ffffff

    and-long v7, v0, v5

    .line 541
    iput-wide v7, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    const/16 v7, 0x19

    shr-long/2addr v0, v7

    const-wide/16 v8, 0x13

    mul-long/2addr v0, v8

    .line 542
    iget-wide v8, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    mul-long/2addr v8, p2

    add-long/2addr v0, v8

    and-long v8, v0, v2

    .line 543
    iput-wide v8, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    shr-long/2addr v0, v4

    .line 544
    iget-wide v8, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    mul-long/2addr v8, p2

    add-long/2addr v0, v8

    and-long v8, v0, v5

    .line 545
    iput-wide v8, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    shr-long/2addr v0, v7

    .line 546
    iget-wide v8, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    mul-long/2addr v8, p2

    add-long/2addr v0, v8

    and-long v8, v0, v2

    .line 547
    iput-wide v8, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    shr-long/2addr v0, v4

    .line 548
    iget-wide v8, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    mul-long/2addr v8, p2

    add-long/2addr v0, v8

    and-long v8, v0, v5

    .line 549
    iput-wide v8, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    shr-long/2addr v0, v7

    .line 550
    iget-wide v8, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    mul-long/2addr v8, p2

    add-long/2addr v0, v8

    and-long v8, v0, v2

    .line 551
    iput-wide v8, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    shr-long/2addr v0, v4

    .line 552
    iget-wide v8, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    mul-long/2addr v8, p2

    add-long/2addr v0, v8

    and-long v8, v0, v5

    .line 553
    iput-wide v8, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    shr-long/2addr v0, v7

    .line 554
    iget-wide v8, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    mul-long/2addr v8, p2

    add-long/2addr v0, v8

    and-long v8, v0, v2

    .line 555
    iput-wide v8, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    shr-long/2addr v0, v4

    .line 556
    iget-wide v8, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    mul-long/2addr v8, p2

    add-long/2addr v0, v8

    and-long p1, v0, v5

    .line 557
    iput-wide p1, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    shr-long p1, v0, v7

    .line 558
    iget-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    add-long/2addr p1, v0

    and-long v0, p1, v2

    .line 559
    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    .line 560
    iget-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    shr-long/2addr p1, v4

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    return-object p0
.end method

.method private static final mula32([B[B[BII)I
    .locals 8

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/16 v7, 0x1f

    if-ge v3, p3, :cond_0

    .line 333
    aget-byte v1, p2, v3

    and-int/lit16 v1, v1, 0xff

    mul-int v6, p4, v1

    const/16 v5, 0x1f

    move-object v2, p0

    move-object v1, p0

    move-object v4, p1

    .line 334
    invoke-static/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mula_small([B[BI[BII)I

    move-result p0

    add-int/lit8 p1, v3, 0x1f

    aget-byte v2, v1, p1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr p0, v2

    aget-byte v2, v4, v7

    and-int/lit16 v2, v2, 0xff

    mul-int/2addr v6, v2

    add-int/2addr p0, v6

    add-int/2addr v0, p0

    int-to-byte p0, v0

    .line 336
    aput-byte p0, v1, p1

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    move-object p0, v1

    move-object p1, v4

    goto :goto_0

    :cond_0
    move-object v1, p0

    add-int/2addr v3, v7

    .line 339
    aget-byte p0, v1, v3

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    shr-int/lit8 p0, v0, 0x8

    return p0
.end method

.method private static final mula_small([B[BI[BII)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v2, v0, p2

    .line 318
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p3, v0

    and-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, p5

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    int-to-byte v3, v1

    .line 319
    aput-byte v3, p0, v2

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static final numsize([BI)I
    .locals 2

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-eqz p1, :cond_0

    .line 370
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static final pack(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;[B)V
    .locals 16

    move-object/from16 v0, p0

    .line 452
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->is_overflow(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Z

    move-result v1

    iget-wide v2, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    sub-int/2addr v1, v2

    const/high16 v2, -0x2000000

    mul-int/2addr v2, v1

    const/16 v5, 0x13

    mul-int/2addr v1, v5

    int-to-long v6, v1

    .line 455
    iget-wide v8, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    add-long/2addr v6, v8

    iget-wide v8, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    const/16 v1, 0x1a

    shl-long/2addr v8, v1

    add-long/2addr v6, v8

    long-to-int v8, v6

    int-to-byte v8, v8

    .line 456
    aput-byte v8, p1, v4

    const/16 v4, 0x8

    shr-long v8, v6, v4

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 457
    aput-byte v8, p1, v3

    const/16 v3, 0x10

    shr-long v8, v6, v3

    long-to-int v8, v8

    int-to-byte v8, v8

    const/4 v9, 0x2

    .line 458
    aput-byte v8, p1, v9

    const/16 v8, 0x18

    shr-long v9, v6, v8

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x3

    .line 459
    aput-byte v9, p1, v10

    const/16 v9, 0x20

    shr-long/2addr v6, v9

    .line 460
    iget-wide v10, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    shl-long/2addr v10, v5

    add-long/2addr v6, v10

    long-to-int v10, v6

    int-to-byte v10, v10

    const/4 v11, 0x4

    .line 461
    aput-byte v10, p1, v11

    shr-long v10, v6, v4

    long-to-int v10, v10

    int-to-byte v10, v10

    const/4 v11, 0x5

    .line 462
    aput-byte v10, p1, v11

    shr-long v10, v6, v3

    long-to-int v10, v10

    int-to-byte v10, v10

    const/4 v11, 0x6

    .line 463
    aput-byte v10, p1, v11

    shr-long v12, v6, v8

    long-to-int v10, v12

    int-to-byte v10, v10

    const/4 v12, 0x7

    .line 464
    aput-byte v10, p1, v12

    shr-long/2addr v6, v9

    .line 465
    iget-wide v12, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    const/16 v10, 0xd

    shl-long/2addr v12, v10

    add-long/2addr v6, v12

    long-to-int v12, v6

    int-to-byte v12, v12

    .line 466
    aput-byte v12, p1, v4

    shr-long v12, v6, v4

    long-to-int v12, v12

    int-to-byte v12, v12

    const/16 v13, 0x9

    .line 467
    aput-byte v12, p1, v13

    shr-long v12, v6, v3

    long-to-int v12, v12

    int-to-byte v12, v12

    const/16 v13, 0xa

    .line 468
    aput-byte v12, p1, v13

    shr-long v12, v6, v8

    long-to-int v12, v12

    int-to-byte v12, v12

    const/16 v13, 0xb

    .line 469
    aput-byte v12, p1, v13

    shr-long/2addr v6, v9

    .line 470
    iget-wide v12, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    shl-long/2addr v12, v11

    add-long/2addr v6, v12

    long-to-int v12, v6

    int-to-byte v12, v12

    const/16 v13, 0xc

    .line 471
    aput-byte v12, p1, v13

    shr-long v14, v6, v4

    long-to-int v12, v14

    int-to-byte v12, v12

    .line 472
    aput-byte v12, p1, v10

    shr-long v14, v6, v3

    long-to-int v10, v14

    int-to-byte v10, v10

    const/16 v12, 0xe

    .line 473
    aput-byte v10, p1, v12

    shr-long v14, v6, v8

    long-to-int v10, v14

    int-to-byte v10, v10

    const/16 v12, 0xf

    .line 474
    aput-byte v10, p1, v12

    shr-long/2addr v6, v9

    .line 475
    iget-wide v14, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    add-long/2addr v6, v14

    iget-wide v14, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    const/16 v10, 0x19

    shl-long/2addr v14, v10

    add-long/2addr v6, v14

    long-to-int v12, v6

    int-to-byte v12, v12

    .line 476
    aput-byte v12, p1, v3

    shr-long v14, v6, v4

    long-to-int v12, v14

    int-to-byte v12, v12

    const/16 v14, 0x11

    .line 477
    aput-byte v12, p1, v14

    shr-long v14, v6, v3

    long-to-int v12, v14

    int-to-byte v12, v12

    const/16 v14, 0x12

    .line 478
    aput-byte v12, p1, v14

    shr-long v14, v6, v8

    long-to-int v12, v14

    int-to-byte v12, v12

    .line 479
    aput-byte v12, p1, v5

    shr-long/2addr v6, v9

    .line 480
    iget-wide v14, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    shl-long/2addr v14, v5

    add-long/2addr v6, v14

    long-to-int v5, v6

    int-to-byte v5, v5

    const/16 v12, 0x14

    .line 481
    aput-byte v5, p1, v12

    shr-long v14, v6, v4

    long-to-int v5, v14

    int-to-byte v5, v5

    const/16 v12, 0x15

    .line 482
    aput-byte v5, p1, v12

    shr-long v14, v6, v3

    long-to-int v5, v14

    int-to-byte v5, v5

    const/16 v12, 0x16

    .line 483
    aput-byte v5, p1, v12

    shr-long v14, v6, v8

    long-to-int v5, v14

    int-to-byte v5, v5

    const/16 v12, 0x17

    .line 484
    aput-byte v5, p1, v12

    shr-long v5, v6, v9

    .line 485
    iget-wide v14, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    shl-long v12, v14, v13

    add-long/2addr v5, v12

    long-to-int v7, v5

    int-to-byte v7, v7

    .line 486
    aput-byte v7, p1, v8

    shr-long v12, v5, v4

    long-to-int v7, v12

    int-to-byte v7, v7

    .line 487
    aput-byte v7, p1, v10

    shr-long v12, v5, v3

    long-to-int v7, v12

    int-to-byte v7, v7

    .line 488
    aput-byte v7, p1, v1

    shr-long v12, v5, v8

    long-to-int v1, v12

    int-to-byte v1, v1

    const/16 v7, 0x1b

    .line 489
    aput-byte v1, p1, v7

    shr-long/2addr v5, v9

    .line 490
    iget-wide v0, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    int-to-long v9, v2

    add-long/2addr v0, v9

    shl-long/2addr v0, v11

    add-long/2addr v5, v0

    long-to-int v0, v5

    int-to-byte v0, v0

    const/16 v1, 0x1c

    .line 491
    aput-byte v0, p1, v1

    shr-long v0, v5, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1d

    .line 492
    aput-byte v0, p1, v1

    shr-long v0, v5, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1e

    .line 493
    aput-byte v0, p1, v1

    shr-long v0, v5, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1f

    .line 494
    aput-byte v0, p1, v1

    return-void
.end method

.method private static final recip(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V
    .locals 9

    .line 685
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    .line 686
    new-instance v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    .line 687
    new-instance v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    .line 688
    new-instance v3, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    .line 689
    new-instance v4, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v4}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    .line 692
    invoke-static {v1, p1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 693
    invoke-static {v2, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 694
    invoke-static {v0, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 695
    invoke-static {v2, v0, p1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 696
    invoke-static {v0, v2, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 697
    invoke-static {v1, v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 698
    invoke-static {v3, v1, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 700
    invoke-static {v1, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 701
    invoke-static {v2, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 702
    invoke-static {v1, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 703
    invoke-static {v2, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 704
    invoke-static {v1, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 705
    invoke-static {v2, v1, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 706
    invoke-static {v1, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 707
    invoke-static {v3, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    const/4 v7, 0x5

    if-ge v6, v7, :cond_0

    .line 709
    invoke-static {v1, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 710
    invoke-static {v3, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 712
    :cond_0
    invoke-static {v1, v3, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 713
    invoke-static {v3, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 714
    invoke-static {v4, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    move v6, v5

    :goto_1
    const/16 v8, 0xa

    if-ge v6, v8, :cond_1

    .line 716
    invoke-static {v3, v4}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 717
    invoke-static {v4, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 719
    :cond_1
    invoke-static {v3, v4, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    const/4 v6, 0x0

    move v8, v6

    :goto_2
    if-ge v8, v7, :cond_2

    .line 721
    invoke-static {v1, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 722
    invoke-static {v3, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 724
    :cond_2
    invoke-static {v1, v3, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 725
    invoke-static {v2, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 726
    invoke-static {v3, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    move v7, v5

    :goto_3
    const/16 v8, 0x19

    if-ge v7, v8, :cond_3

    .line 728
    invoke-static {v2, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 729
    invoke-static {v3, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 731
    :cond_3
    invoke-static {v2, v3, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 732
    invoke-static {v3, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 733
    invoke-static {v4, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    :goto_4
    const/16 v7, 0x32

    if-ge v5, v7, :cond_4

    .line 735
    invoke-static {v3, v4}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 736
    invoke-static {v4, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 738
    :cond_4
    invoke-static {v3, v4, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    :goto_5
    if-ge v6, v8, :cond_5

    .line 740
    invoke-static {v4, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 741
    invoke-static {v3, v4}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 743
    :cond_5
    invoke-static {v2, v3, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 744
    invoke-static {v1, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 745
    invoke-static {v2, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    if-eqz p2, :cond_6

    .line 747
    invoke-static {p0, p1, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    return-void

    .line 749
    :cond_6
    invoke-static {v1, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 750
    invoke-static {v2, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 751
    invoke-static {v1, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 752
    invoke-static {p0, v1, v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    return-void
.end method

.method private static final set(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V
    .locals 2

    int-to-long v0, p1

    .line 508
    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    .line 509
    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    .line 510
    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    .line 511
    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    .line 512
    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    return-void
.end method

.method public static final sign([B[B[B[B)Z
    .locals 11

    const/16 v6, 0x20

    .line 141
    new-array v3, v6, [B

    new-array v1, v6, [B

    const/16 v7, 0x40

    .line 142
    new-array v8, v7, [B

    .line 143
    new-array v9, v7, [B

    .line 146
    invoke-static {v3, p1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->cpy32([B[B)V

    .line 147
    invoke-static {v1, p2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->cpy32([B[B)V

    .line 150
    new-array v0, v6, [B

    .line 151
    sget-object v10, Lcom/sshtools/common/ssh/components/jce/Curve25519;->ORDER:[B

    invoke-static {v0, v3, v6, v10, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->divmod([B[BI[BI)V

    .line 152
    invoke-static {v0, v1, v6, v10, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->divmod([B[BI[BI)V

    const/16 v4, 0x20

    const/4 v5, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    .line 158
    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mula_small([B[BI[BII)I

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, v10

    .line 159
    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mula_small([B[BI[BII)I

    const/4 v1, 0x1

    .line 162
    invoke-static {v8, p0, p3, v6, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mula32([B[B[BII)I

    .line 163
    invoke-static {v9, v8, v7, v3, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->divmod([B[BI[BI)V

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v6, :cond_0

    .line 166
    aget-byte v5, v8, v3

    aput-byte v5, p0, v3

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private static final sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 637
    iget-wide v2, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    iget-wide v4, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    iget-wide v6, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    iget-wide v8, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    iget-wide v10, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    .line 638
    iget-wide v12, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    iget-wide v14, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    move-wide/from16 v20, v2

    iget-wide v1, v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    mul-long v22, v10, v10

    mul-long v24, v16, v20

    mul-long v26, v6, v14

    add-long v24, v24, v26

    const-wide/16 v26, 0x2

    mul-long v24, v24, v26

    add-long v22, v22, v24

    mul-long v24, v1, v1

    const-wide/16 v28, 0x26

    mul-long v24, v24, v28

    add-long v22, v22, v24

    mul-long v24, v4, v18

    mul-long v30, v8, v12

    add-long v24, v24, v30

    const-wide/16 v30, 0x4

    mul-long v24, v24, v30

    add-long v22, v22, v24

    const-wide/32 v24, 0x3ffffff

    move-wide/from16 v32, v1

    and-long v1, v22, v24

    .line 642
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    const/16 v1, 0x1a

    shr-long v2, v22, v1

    mul-long v22, v16, v32

    mul-long v34, v4, v20

    add-long v22, v22, v34

    mul-long v34, v6, v18

    add-long v22, v22, v34

    mul-long v34, v8, v14

    add-long v22, v22, v34

    mul-long v34, v10, v12

    add-long v22, v22, v34

    mul-long v22, v22, v26

    add-long v2, v2, v22

    const-wide/32 v22, 0x1ffffff

    move/from16 p1, v1

    move-wide/from16 v34, v2

    and-long v1, v34, v22

    .line 645
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    const/16 v1, 0x19

    shr-long v2, v34, v1

    const-wide/16 v34, 0x13

    mul-long v2, v2, v34

    mul-long v36, v16, v16

    add-long v2, v2, v36

    mul-long v36, v6, v20

    mul-long v38, v10, v14

    add-long v36, v36, v38

    mul-long v38, v12, v12

    add-long v36, v36, v38

    mul-long v36, v36, v28

    add-long v2, v2, v36

    mul-long v36, v4, v32

    mul-long v38, v8, v18

    add-long v36, v36, v38

    const-wide/16 v38, 0x4c

    mul-long v36, v36, v38

    add-long v2, v2, v36

    move/from16 v36, v1

    move-wide/from16 v40, v2

    and-long v1, v40, v24

    .line 649
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    shr-long v1, v40, p1

    mul-long v40, v16, v4

    mul-long v40, v40, v26

    add-long v1, v1, v40

    mul-long v40, v6, v32

    mul-long v42, v8, v20

    add-long v40, v40, v42

    mul-long v42, v10, v18

    add-long v40, v40, v42

    mul-long v42, v12, v14

    add-long v40, v40, v42

    mul-long v40, v40, v28

    add-long v1, v1, v40

    move-wide/from16 v40, v1

    and-long v1, v40, v22

    .line 652
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    shr-long v1, v40, v36

    mul-long v40, v14, v14

    mul-long v40, v40, v34

    add-long v1, v1, v40

    mul-long v40, v16, v6

    mul-long v42, v4, v4

    add-long v40, v40, v42

    mul-long v40, v40, v26

    add-long v1, v1, v40

    mul-long v40, v10, v20

    mul-long v40, v40, v28

    add-long v1, v1, v40

    mul-long v40, v8, v32

    mul-long v42, v12, v18

    add-long v40, v40, v42

    mul-long v40, v40, v38

    add-long v1, v1, v40

    move-wide/from16 v40, v1

    and-long v1, v40, v24

    .line 656
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    shr-long v1, v40, p1

    mul-long v40, v16, v8

    mul-long v42, v4, v6

    add-long v40, v40, v42

    mul-long v40, v40, v26

    add-long v1, v1, v40

    mul-long v40, v10, v32

    mul-long v42, v12, v20

    add-long v40, v40, v42

    mul-long v42, v14, v18

    add-long v40, v40, v42

    mul-long v40, v40, v28

    add-long v1, v1, v40

    move-wide/from16 v40, v1

    and-long v1, v40, v22

    .line 659
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    shr-long v1, v40, v36

    mul-long v40, v6, v6

    add-long v1, v1, v40

    mul-long v40, v16, v10

    mul-long v40, v40, v26

    add-long v1, v1, v40

    mul-long v40, v14, v20

    mul-long v42, v18, v18

    add-long v40, v40, v42

    mul-long v40, v40, v28

    add-long v1, v1, v40

    mul-long v40, v4, v8

    mul-long v40, v40, v30

    add-long v1, v1, v40

    mul-long v40, v12, v32

    mul-long v40, v40, v38

    add-long v1, v1, v40

    move-wide/from16 v40, v1

    and-long v1, v40, v24

    .line 663
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    shr-long v1, v40, p1

    mul-long v40, v16, v12

    mul-long v42, v4, v10

    add-long v40, v40, v42

    mul-long v42, v6, v8

    add-long v40, v40, v42

    mul-long v40, v40, v26

    add-long v1, v1, v40

    mul-long v40, v14, v32

    mul-long v42, v18, v20

    add-long v40, v40, v42

    mul-long v40, v40, v28

    add-long v1, v1, v40

    move-wide/from16 v40, v1

    and-long v1, v40, v22

    .line 666
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    shr-long v1, v40, v36

    mul-long v40, v20, v20

    mul-long v40, v40, v34

    add-long v1, v1, v40

    mul-long v34, v16, v14

    mul-long v40, v6, v10

    add-long v34, v34, v40

    mul-long v40, v8, v8

    add-long v34, v34, v40

    mul-long v34, v34, v26

    add-long v1, v1, v34

    mul-long v34, v4, v12

    mul-long v34, v34, v30

    add-long v1, v1, v34

    mul-long v30, v18, v32

    mul-long v30, v30, v38

    add-long v1, v1, v30

    move-wide/from16 v30, v1

    and-long v1, v30, v24

    .line 670
    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    shr-long v1, v30, p1

    mul-long v16, v16, v18

    mul-long/2addr v4, v14

    add-long v16, v16, v4

    mul-long/2addr v6, v12

    add-long v16, v16, v6

    mul-long/2addr v8, v10

    add-long v16, v16, v8

    mul-long v16, v16, v26

    add-long v1, v1, v16

    mul-long v3, v20, v32

    mul-long v3, v3, v28

    add-long/2addr v1, v3

    and-long v3, v1, v22

    .line 673
    iput-wide v3, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    shr-long v1, v1, v36

    .line 674
    iget-wide v3, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    add-long/2addr v1, v3

    and-long v3, v1, v24

    .line 675
    iput-wide v3, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    .line 676
    iget-wide v3, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    shr-long v1, v1, p1

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    return-object v0
.end method

.method private static final sqrt(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V
    .locals 7

    .line 763
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    new-instance v1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    new-instance v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    .line 764
    invoke-static {v1, p1, p1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    const/4 v3, 0x1

    .line 765
    invoke-static {v0, v1, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->recip(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 766
    invoke-static {p0, v0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 767
    invoke-static {v2, v1, p0}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 768
    iget-wide v3, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    .line 769
    invoke-static {v1, v0, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 770
    invoke-static {p0, p1, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    return-void
.end method

.method private static final sub(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V
    .locals 4

    .line 526
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    .line 527
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    .line 528
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    .line 529
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    .line 530
    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    iget-wide v2, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    iget-wide v0, p1, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    iget-wide p1, p2, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    return-void
.end method

.method private static final unpack(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;[B)V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 413
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v1, v5

    const/4 v5, 0x3

    aget-byte v7, p1, v5

    and-int/2addr v7, v5

    const/16 v8, 0x18

    shl-int/2addr v7, v8

    or-int/2addr v1, v7

    int-to-long v9, v1

    iput-wide v9, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    .line 415
    aget-byte v1, p1, v5

    and-int/lit16 v1, v1, 0xfc

    shr-int/2addr v1, v3

    const/4 v7, 0x4

    aget-byte v9, p1, v7

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x6

    shl-int/2addr v9, v10

    or-int/2addr v1, v9

    const/4 v9, 0x5

    aget-byte v11, p1, v9

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xe

    shl-int/2addr v11, v12

    or-int/2addr v1, v11

    aget-byte v11, p1, v10

    const/4 v13, 0x7

    and-int/2addr v11, v13

    const/16 v14, 0x16

    shl-int/2addr v11, v14

    or-int/2addr v1, v11

    move v11, v2

    move v15, v3

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_1:J

    .line 417
    aget-byte v1, p1, v10

    and-int/lit16 v1, v1, 0xf8

    shr-int/2addr v1, v5

    aget-byte v2, p1, v13

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v9

    or-int/2addr v1, v2

    aget-byte v2, p1, v4

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xd

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x9

    aget-byte v16, p1, v2

    and-int/lit8 v16, v16, 0x1f

    const/16 v17, 0x15

    shl-int/lit8 v16, v16, 0x15

    or-int v1, v1, v16

    move/from16 v18, v2

    move/from16 v16, v3

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_2:J

    .line 419
    aget-byte v1, p1, v18

    and-int/lit16 v1, v1, 0xe0

    shr-int/2addr v1, v9

    const/16 v2, 0xa

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    or-int/2addr v1, v3

    const/16 v3, 0xb

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xb

    or-int/2addr v1, v3

    const/16 v3, 0xc

    aget-byte v18, p1, v3

    and-int/lit8 v18, v18, 0x3f

    const/16 v19, 0x13

    shl-int/lit8 v18, v18, 0x13

    or-int v1, v1, v18

    move/from16 v18, v2

    move/from16 v20, v3

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_3:J

    .line 421
    aget-byte v1, p1, v20

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v10

    aget-byte v2, p1, v16

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v15

    or-int/2addr v1, v2

    aget-byte v2, p1, v12

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    or-int/2addr v1, v2

    const/16 v2, 0xf

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v12, 0x12

    shl-int/2addr v3, v12

    or-int/2addr v1, v3

    move/from16 v21, v2

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_4:J

    .line 423
    aget-byte v1, p1, v6

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x11

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    aget-byte v2, p1, v12

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte v2, p1, v19

    and-int/2addr v2, v11

    shl-int/2addr v2, v8

    or-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_5:J

    .line 425
    aget-byte v1, p1, v19

    and-int/lit16 v1, v1, 0xfe

    shr-int/2addr v1, v11

    const/16 v2, 0x14

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v13

    or-int/2addr v1, v2

    aget-byte v2, p1, v17

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    aget-byte v2, p1, v14

    and-int/2addr v2, v13

    shl-int/lit8 v2, v2, 0x17

    or-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_6:J

    .line 427
    aget-byte v1, p1, v14

    and-int/lit16 v1, v1, 0xf8

    shr-int/2addr v1, v5

    const/16 v2, 0x17

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v9

    or-int/2addr v1, v2

    aget-byte v2, p1, v8

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xd

    or-int/2addr v1, v2

    const/16 v2, 0x19

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_7:J

    const/16 v1, 0x19

    .line 429
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xf0

    shr-int/2addr v1, v7

    const/16 v2, 0x1a

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v7

    or-int/2addr v1, v2

    const/16 v2, 0x1b

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    const/16 v2, 0x1c

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_8:J

    const/16 v1, 0x1c

    .line 431
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v10

    const/16 v2, 0x1d

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v15

    or-int/2addr v1, v2

    const/16 v2, 0x1e

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    or-int/2addr v1, v2

    const/16 v2, 0x1f

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v12

    or-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_9:J

    return-void
.end method

.method public static final verify([B[B[B[B)V
    .locals 34

    const/16 v0, 0x20

    .line 178
    new-array v1, v0, [B

    const/4 v2, 0x2

    .line 180
    new-array v3, v2, [Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    new-instance v4, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v4}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v4}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 181
    new-array v4, v2, [Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    new-instance v7, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v7}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v7, v4, v5

    new-instance v7, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v7}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v7, v4, v6

    const/4 v7, 0x3

    .line 182
    new-array v8, v7, [Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    new-instance v9, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v9}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v9, v8, v5

    new-instance v9, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v9}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v9, v8, v6

    new-instance v9, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v9}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v9, v8, v2

    .line 183
    new-array v9, v7, [Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    new-instance v10, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v10}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v10, v9, v5

    new-instance v10, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v10}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v10, v9, v6

    new-instance v10, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v10}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v10, v9, v2

    .line 184
    new-array v10, v7, [Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    new-instance v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v11}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v11, v10, v5

    new-instance v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v11}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v11, v10, v6

    new-instance v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v11}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v11, v10, v2

    .line 185
    new-array v7, v7, [Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    new-instance v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v11}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v11, v7, v5

    new-instance v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v11}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v11, v7, v6

    new-instance v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    invoke-direct {v11}, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;-><init>()V

    aput-object v11, v7, v2

    .line 191
    aget-object v11, v3, v5

    const/16 v12, 0x9

    invoke-static {v11, v12}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->set(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 192
    aget-object v11, v3, v6

    move-object/from16 v12, p3

    invoke-static {v11, v12}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->unpack(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;[B)V

    .line 199
    aget-object v11, v10, v5

    aget-object v12, v7, v5

    aget-object v13, v3, v6

    invoke-static {v11, v12, v13}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->x_to_y2(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 200
    aget-object v11, v10, v5

    aget-object v12, v7, v5

    invoke-static {v11, v12}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqrt(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 201
    aget-object v11, v10, v5

    invoke-static {v11}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->is_negative(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)I

    move-result v11

    .line 202
    aget-object v12, v7, v5

    iget-wide v13, v12, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    const-wide/32 v15, 0x25981c8

    add-long/2addr v13, v15

    iput-wide v13, v12, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    .line 203
    aget-object v12, v7, v6

    sget-object v13, Lcom/sshtools/common/ssh/components/jce/Curve25519;->BASE_2Y:Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    aget-object v14, v10, v5

    invoke-static {v12, v13, v14}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 204
    aget-object v12, v10, v11

    aget-object v13, v7, v5

    aget-object v14, v7, v6

    invoke-static {v12, v13, v14}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sub(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    rsub-int/lit8 v11, v11, 0x1

    .line 205
    aget-object v11, v10, v11

    aget-object v12, v7, v5

    aget-object v13, v7, v6

    invoke-static {v11, v12, v13}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 206
    aget-object v11, v7, v5

    aget-object v12, v3, v6

    invoke-static {v11, v12}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->cpy(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 207
    aget-object v11, v7, v5

    iget-wide v12, v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    const-wide/16 v14, 0x9

    sub-long/2addr v12, v14

    iput-wide v12, v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    .line 208
    aget-object v11, v7, v6

    aget-object v12, v7, v5

    invoke-static {v11, v12}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 209
    aget-object v11, v7, v5

    aget-object v12, v7, v6

    invoke-static {v11, v12, v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->recip(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 210
    aget-object v11, v4, v5

    aget-object v12, v10, v5

    aget-object v13, v7, v5

    invoke-static {v11, v12, v13}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 211
    aget-object v11, v4, v5

    aget-object v12, v3, v6

    invoke-static {v11, v11, v12}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sub(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 212
    aget-object v11, v4, v5

    iget-wide v12, v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    const-wide/32 v14, 0x76d0f

    sub-long/2addr v12, v14

    iput-wide v12, v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    .line 213
    aget-object v11, v4, v6

    aget-object v12, v10, v6

    aget-object v13, v7, v5

    invoke-static {v11, v12, v13}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 214
    aget-object v11, v4, v6

    aget-object v12, v3, v6

    invoke-static {v11, v11, v12}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sub(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 215
    aget-object v11, v4, v6

    iget-wide v12, v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    sub-long/2addr v12, v14

    iput-wide v12, v11, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    .line 216
    aget-object v11, v4, v5

    const-wide/16 v12, 0x1

    invoke-static {v11, v11, v12, v13}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul_small(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;J)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 217
    aget-object v11, v4, v6

    invoke-static {v11, v11, v12, v13}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul_small(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;J)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    move v11, v5

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_0
    const/16 v16, 0x8

    if-ge v11, v0, :cond_0

    shr-int/lit8 v12, v14, 0x8

    .line 222
    aget-byte v14, p1, v11

    and-int/lit16 v0, v14, 0xff

    xor-int/2addr v0, v12

    and-int/lit16 v12, v14, 0xff

    shl-int/2addr v12, v6

    xor-int v14, v0, v12

    shr-int/lit8 v0, v15, 0x8

    .line 223
    aget-byte v12, p2, v11

    and-int/lit16 v15, v12, 0xff

    xor-int/2addr v0, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v6

    xor-int v15, v0, v12

    xor-int v0, v14, v15

    not-int v12, v0

    and-int/lit16 v0, v13, 0x80

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v12

    xor-int/2addr v0, v14

    and-int/lit8 v13, v0, 0x1

    shl-int/2addr v13, v6

    and-int/2addr v13, v12

    xor-int/2addr v0, v13

    and-int/lit8 v13, v0, 0x2

    shl-int/2addr v13, v6

    and-int/2addr v13, v12

    xor-int/2addr v0, v13

    and-int/lit8 v13, v0, 0x4

    shl-int/2addr v13, v6

    and-int/2addr v13, v12

    xor-int/2addr v0, v13

    and-int/lit8 v13, v0, 0x8

    shl-int/2addr v13, v6

    and-int/2addr v13, v12

    xor-int/2addr v0, v13

    and-int/lit8 v13, v0, 0x10

    shl-int/2addr v13, v6

    and-int/2addr v13, v12

    xor-int/2addr v0, v13

    and-int/lit8 v13, v0, 0x20

    shl-int/2addr v13, v6

    and-int/2addr v13, v12

    xor-int/2addr v0, v13

    and-int/lit8 v13, v0, 0x40

    shl-int/2addr v13, v6

    and-int/2addr v13, v12

    xor-int/2addr v13, v0

    int-to-byte v0, v13

    .line 233
    aput-byte v0, v1, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v13, 0x80

    shl-int/2addr v0, v6

    and-int/2addr v0, v12

    xor-int/2addr v0, v14

    shr-int/lit8 v0, v0, 0x8

    .line 239
    aget-object v11, v8, v5

    invoke-static {v11, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->set(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 240
    aget-object v11, v8, v6

    aget-object v12, v3, v0

    invoke-static {v11, v12}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->cpy(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 241
    aget-object v11, v8, v2

    aget-object v12, v4, v5

    invoke-static {v11, v12}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->cpy(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 242
    aget-object v11, v9, v5

    invoke-static {v11, v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->set(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 243
    aget-object v11, v9, v6

    invoke-static {v11, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->set(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 244
    aget-object v11, v9, v2

    invoke-static {v11, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->set(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    move v11, v0

    move v12, v5

    move v13, v12

    const/16 v0, 0x20

    :goto_1
    add-int/lit8 v14, v0, -0x1

    if-eqz v0, :cond_2

    shl-int/lit8 v0, v12, 0x8

    .line 257
    aget-byte v12, p1, v14

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v12, v0

    shl-int/lit8 v0, v13, 0x8

    .line 258
    aget-byte v13, p2, v14

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v13, v0

    shl-int/lit8 v0, v11, 0x8

    .line 259
    aget-byte v11, v1, v14

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v11, v0

    move/from16 v0, v16

    :goto_2
    add-int/lit8 v15, v0, -0x1

    if-eqz v0, :cond_1

    .line 262
    aget-object v0, v10, v5

    move/from16 v17, v2

    aget-object v2, v7, v5

    move/from16 v18, v6

    aget-object v6, v8, v5

    move/from16 v19, v5

    aget-object v5, v9, v19

    invoke-static {v0, v2, v6, v5}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mont_prep(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 263
    aget-object v0, v10, v18

    aget-object v2, v7, v18

    aget-object v5, v8, v18

    aget-object v6, v9, v18

    invoke-static {v0, v2, v5, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mont_prep(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 264
    aget-object v0, v10, v17

    aget-object v2, v7, v17

    aget-object v5, v8, v17

    aget-object v6, v9, v17

    invoke-static {v0, v2, v5, v6}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mont_prep(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    shr-int/lit8 v0, v12, 0x1

    xor-int/2addr v0, v12

    shr-int/2addr v0, v15

    and-int/lit8 v0, v0, 0x1

    shr-int/lit8 v2, v13, 0x1

    xor-int/2addr v2, v13

    shr-int/2addr v2, v15

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 268
    aget-object v20, v8, v17

    aget-object v21, v9, v17

    aget-object v22, v10, v0

    aget-object v23, v7, v0

    aget-object v24, v8, v19

    aget-object v25, v9, v19

    invoke-static/range {v20 .. v25}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mont_dbl(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    shr-int v0, v11, v15

    and-int/lit8 v2, v0, 0x2

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v5, v0, 0x1

    xor-int/2addr v2, v5

    .line 271
    aget-object v20, v10, v18

    aget-object v21, v7, v18

    aget-object v22, v10, v2

    aget-object v23, v7, v2

    aget-object v24, v8, v18

    aget-object v25, v9, v18

    aget-object v26, v3, v0

    invoke-static/range {v20 .. v26}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mont_add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 274
    aget-object v27, v10, v17

    aget-object v28, v7, v17

    aget-object v29, v10, v19

    aget-object v30, v7, v19

    aget-object v31, v8, v17

    aget-object v32, v9, v17

    xor-int v0, v12, v13

    shr-int/2addr v0, v15

    and-int/lit8 v0, v0, 0x2

    shr-int/lit8 v0, v0, 0x1

    aget-object v33, v4, v0

    invoke-static/range {v27 .. v33}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mont_add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    move v0, v15

    move/from16 v2, v17

    move/from16 v6, v18

    move/from16 v5, v19

    goto/16 :goto_2

    :cond_1
    move v0, v14

    goto/16 :goto_1

    :cond_2
    move/from16 v19, v5

    move/from16 v18, v6

    and-int/lit8 v0, v12, 0x1

    and-int/lit8 v1, v13, 0x1

    add-int/2addr v0, v1

    .line 280
    aget-object v1, v10, v19

    aget-object v2, v9, v0

    move/from16 v3, v19

    invoke-static {v1, v2, v3}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->recip(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;I)V

    .line 281
    aget-object v1, v10, v18

    aget-object v0, v8, v0

    aget-object v2, v10, v3

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 283
    aget-object v0, v10, v18

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->pack(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;[B)V

    return-void
.end method

.method private static final x_to_y2(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V
    .locals 4

    .line 817
    invoke-static {p0, p2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->sqr(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    const-wide/32 v0, 0x76d06

    .line 818
    invoke-static {p1, p2, v0, v1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul_small(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;J)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    .line 819
    invoke-static {p0, p0, p1}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->add(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)V

    .line 820
    iget-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;->_0:J

    .line 821
    invoke-static {p1, p0, p2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->mul(Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;)Lcom/sshtools/common/ssh/components/jce/Curve25519$long10;

    return-void
.end method
