.class public Lcom/sshtools/common/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs add(Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)[TT;"
        }
    .end annotation

    .line 117
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 118
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    array-length p1, p1

    aput-object p0, v0, p1

    return-object v0
.end method

.method public static areEqual([B[B)Z
    .locals 4

    .line 103
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 106
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 107
    aget-byte v1, p0, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static areEqual([C[C)Z
    .locals 4

    .line 125
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 128
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 129
    aget-char v1, p0, v0

    aget-char v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static cat([B[B)[B
    .locals 3

    .line 147
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 148
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copy([BI)[B
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-static {p0, v0, p1}, Lcom/sshtools/common/util/Arrays;->copy([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static copy([BII)[B
    .locals 2

    .line 141
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 142
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static med3([IIII)I
    .locals 2

    .line 31
    aget v0, p0, p1

    aget v1, p0, p2

    if-ge v0, v1, :cond_1

    .line 32
    aget p0, p0, p3

    if-ge v1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ge v0, p0, :cond_3

    goto :goto_1

    .line 33
    :cond_1
    aget p0, p0, p3

    if-le v1, p0, :cond_2

    :goto_0
    return p2

    :cond_2
    if-le v0, p0, :cond_3

    :goto_1
    return p3

    :cond_3
    return p1
.end method

.method public static sort([I)V
    .locals 2

    const/4 v0, 0x0

    .line 56
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/sshtools/common/util/Arrays;->sort1([III)V

    return-void
.end method

.method private static sort1([III)V
    .locals 7

    const/4 v0, 0x7

    if-ge p2, v0, :cond_1

    move v0, p1

    :goto_0
    add-int v1, p2, p1

    if-ge v0, v1, :cond_8

    move v1, v0

    :goto_1
    if-le v1, p1, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 63
    aget v3, p0, v2

    aget v4, p0, v1

    if-le v3, v4, :cond_0

    .line 64
    invoke-static {p0, v1, v2}, Lcom/sshtools/common/util/Arrays;->swap([III)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    shr-int/lit8 v1, p2, 0x1

    add-int/2addr v1, p1

    if-le p2, v0, :cond_3

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x28

    if-le p2, v2, :cond_2

    .line 74
    div-int/lit8 v2, p2, 0x8

    add-int v3, p1, v2

    mul-int/lit8 v4, v2, 0x2

    add-int v5, p1, v4

    .line 75
    invoke-static {p0, p1, v3, v5}, Lcom/sshtools/common/util/Arrays;->med3([IIII)I

    move-result v3

    sub-int v5, v1, v2

    add-int v6, v1, v2

    .line 76
    invoke-static {p0, v5, v1, v6}, Lcom/sshtools/common/util/Arrays;->med3([IIII)I

    move-result v1

    sub-int v4, v0, v4

    sub-int v2, v0, v2

    .line 77
    invoke-static {p0, v4, v2, v0}, Lcom/sshtools/common/util/Arrays;->med3([IIII)I

    move-result v0

    goto :goto_2

    :cond_2
    move v3, p1

    .line 79
    :goto_2
    invoke-static {p0, v3, v1, v0}, Lcom/sshtools/common/util/Arrays;->med3([IIII)I

    move-result v1

    .line 81
    :cond_3
    aget v0, p0, v1

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    move v1, p2

    move v2, v1

    move p2, p1

    :goto_3
    if-gt p1, v1, :cond_5

    .line 86
    aget v3, p0, p1

    if-gt v3, v0, :cond_5

    if-ne v3, v0, :cond_4

    add-int/lit8 v3, p2, 0x1

    .line 88
    invoke-static {p0, p2, p1}, Lcom/sshtools/common/util/Arrays;->swap([III)V

    move p2, v3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-lt v1, p1, :cond_7

    .line 91
    aget v3, p0, v1

    if-lt v3, v0, :cond_7

    if-ne v3, v0, :cond_6

    add-int/lit8 v3, v2, -0x1

    .line 93
    invoke-static {p0, v1, v2}, Lcom/sshtools/common/util/Arrays;->swap([III)V

    move v2, v3

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_7
    if-le p1, v1, :cond_9

    :cond_8
    return-void

    :cond_9
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v1, -0x1

    .line 98
    invoke-static {p0, p1, v1}, Lcom/sshtools/common/util/Arrays;->swap([III)V

    move p1, v3

    move v1, v4

    goto :goto_3
.end method

.method private static swap([III)V
    .locals 2

    .line 40
    aget v0, p0, p1

    .line 41
    aget v1, p0, p2

    aput v1, p0, p1

    .line 42
    aput v0, p0, p2

    return-void
.end method
