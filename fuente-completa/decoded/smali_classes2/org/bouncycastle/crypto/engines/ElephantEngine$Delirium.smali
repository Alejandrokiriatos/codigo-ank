.class Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ElephantEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Delirium"
.end annotation


# static fields
.field private static final nRounds:I = 0x12


# instance fields
.field private final KeccakRhoOffsets:[I

.field private final KeccakRoundConstants:[B

.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ElephantEngine;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/engines/ElephantEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->this$0:Lorg/bouncycastle/crypto/engines/ElephantEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x12

    new-array p1, p1, [B

    fill-array-data p1, :array_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->KeccakRoundConstants:[B

    const/16 p1, 0x19

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->KeccakRhoOffsets:[I

    return-void

    :array_0
    .array-data 1
        0x1t
        -0x7et
        -0x76t
        0x0t
        -0x75t
        0x1t
        -0x7ft
        0x9t
        -0x76t
        -0x78t
        0x9t
        0xat
        -0x75t
        -0x75t
        -0x77t
        0x3t
        0x2t
        -0x80t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x1
        0x6
        0x4
        0x3
        0x4
        0x4
        0x6
        0x7
        0x4
        0x3
        0x2
        0x3
        0x1
        0x7
        0x1
        0x5
        0x7
        0x5
        0x0
        0x2
        0x2
        0x5
        0x0
        0x6
    .end array-data
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/engines/ElephantEngine;Lorg/bouncycastle/crypto/engines/ElephantEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;-><init>(Lorg/bouncycastle/crypto/engines/ElephantEngine;)V

    return-void
.end method

.method private KeccakP200Round([BI)V
    .locals 9

    const/16 v0, 0x19

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v2

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->index(II)I

    move-result v6

    aget-byte v6, p1, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_2

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v5, v2, 0x1

    rem-int/lit8 v6, v5, 0x5

    aget-byte v6, v0, v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->ROL8(BI)B

    move-result v6

    add-int/lit8 v2, v2, 0x4

    rem-int/2addr v2, v3

    aget-byte v2, v0, v2

    xor-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_4

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_3

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->index(II)I

    move-result v5

    aget-byte v6, p1, v5

    add-int/lit8 v7, v2, 0x5

    aget-byte v7, v0, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_5
    if-ge v2, v3, :cond_6

    move v4, v1

    :goto_6
    if-ge v4, v3, :cond_5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->index(II)I

    move-result v5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->index(II)I

    move-result v6

    aget-byte v6, p1, v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->KeccakRhoOffsets:[I

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->index(II)I

    move-result v8

    aget v7, v7, v8

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->ROL8(BI)B

    move-result v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_7
    if-ge v2, v3, :cond_8

    move v4, v1

    :goto_8
    if-ge v4, v3, :cond_7

    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v4, 0x3

    add-int/2addr v5, v6

    rem-int/2addr v5, v3

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->index(II)I

    move-result v5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->index(II)I

    move-result v6

    aget-byte v6, v0, v6

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_9
    if-ge v2, v3, :cond_b

    move v4, v1

    :goto_a
    if-ge v4, v3, :cond_9

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->index(II)I

    move-result v5

    aget-byte v5, p1, v5

    add-int/lit8 v6, v4, 0x1

    rem-int/lit8 v7, v6, 0x5

    invoke-direct {p0, v7, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->index(II)I

    move-result v7

    aget-byte v7, p1, v7

    not-int v7, v7

    add-int/lit8 v8, v4, 0x2

    rem-int/2addr v8, v3

    invoke-direct {p0, v8, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->index(II)I

    move-result v8

    aget-byte v8, p1, v8

    and-int/2addr v7, v8

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    move v4, v6

    goto :goto_a

    :cond_9
    move v4, v1

    :goto_b
    if-ge v4, v3, :cond_a

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->index(II)I

    move-result v5

    aget-byte v6, v0, v4

    aput-byte v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_b
    aget-byte v0, p1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->KeccakRoundConstants:[B

    aget-byte p2, v2, p2

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    return-void
.end method

.method private ROL8(BI)B
    .locals 1

    shl-int v0, p1, p2

    and-int/lit16 p1, p1, 0xff

    rsub-int/lit8 p2, p2, 0x8

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method

.method private index(II)I
    .locals 0

    mul-int/lit8 p2, p2, 0x5

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public lfsr_step()V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->this$0:Lorg/bouncycastle/crypto/engines/ElephantEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->access$100(Lorg/bouncycastle/crypto/engines/ElephantEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->this$0:Lorg/bouncycastle/crypto/engines/ElephantEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->this$0:Lorg/bouncycastle/crypto/engines/ElephantEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->access$200(Lorg/bouncycastle/crypto/engines/ElephantEngine;)[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->access$300(Lorg/bouncycastle/crypto/engines/ElephantEngine;B)B

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->this$0:Lorg/bouncycastle/crypto/engines/ElephantEngine;

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->access$200(Lorg/bouncycastle/crypto/engines/ElephantEngine;)[B

    move-result-object v4

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->access$300(Lorg/bouncycastle/crypto/engines/ElephantEngine;B)B

    move-result v3

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->this$0:Lorg/bouncycastle/crypto/engines/ElephantEngine;

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->access$200(Lorg/bouncycastle/crypto/engines/ElephantEngine;)[B

    move-result-object v3

    const/16 v4, 0xd

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public permutation([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;->KeccakP200Round([BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
