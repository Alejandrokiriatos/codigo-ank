.class public Lcom/sshtools/common/util/UnsignedInteger64;
.super Ljava/lang/Object;
.source "UnsignedInteger64.java"


# static fields
.field public static final MAX_VALUE:Ljava/math/BigInteger;

.field public static final MIN_VALUE:Ljava/math/BigInteger;

.field public static final ONE:Lcom/sshtools/common/util/UnsignedInteger64;

.field public static final ZERO:Lcom/sshtools/common/util/UnsignedInteger64;


# instance fields
.field private bigInt:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger64;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    sput-object v0, Lcom/sshtools/common/util/UnsignedInteger64;->ZERO:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 35
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger64;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    sput-object v0, Lcom/sshtools/common/util/UnsignedInteger64;->ONE:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 38
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "18446744073709551615"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/util/UnsignedInteger64;->MAX_VALUE:Ljava/math/BigInteger;

    .line 42
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/util/UnsignedInteger64;->MIN_VALUE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    .line 55
    sget-object p1, Lcom/sshtools/common/util/UnsignedInteger64;->MIN_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    sget-object v0, Lcom/sshtools/common/util/UnsignedInteger64;->MAX_VALUE:Ljava/math/BigInteger;

    .line 56
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    .line 91
    sget-object p1, Lcom/sshtools/common/util/UnsignedInteger64;->MIN_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    sget-object v0, Lcom/sshtools/common/util/UnsignedInteger64;->MAX_VALUE:Ljava/math/BigInteger;

    .line 92
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    .line 71
    sget-object p1, Lcom/sshtools/common/util/UnsignedInteger64;->MIN_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    sget-object v0, Lcom/sshtools/common/util/UnsignedInteger64;->MAX_VALUE:Ljava/math/BigInteger;

    .line 72
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
.end method

.method public static add(Lcom/sshtools/common/util/UnsignedInteger64;I)Lcom/sshtools/common/util/UnsignedInteger64;
    .locals 3

    .line 178
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger64;

    iget-object p0, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static add(Lcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;)Lcom/sshtools/common/util/UnsignedInteger64;
    .locals 1

    .line 166
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger64;

    iget-object p0, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public bigIntValue()Ljava/math/BigInteger;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 110
    :cond_0
    :try_start_0
    check-cast p1, Lcom/sshtools/common/util/UnsignedInteger64;

    .line 112
    iget-object p1, p1, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toByteArray()[B
    .locals 5

    const/16 v0, 0x8

    .line 186
    new-array v1, v0, [B

    .line 187
    invoke-virtual {p0}, Lcom/sshtools/common/util/UnsignedInteger64;->bigIntValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 188
    array-length v3, v2

    sub-int/2addr v0, v3

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger64;->bigInt:Ljava/math/BigInteger;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
