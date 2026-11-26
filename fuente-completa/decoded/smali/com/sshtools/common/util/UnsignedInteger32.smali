.class public Lcom/sshtools/common/util/UnsignedInteger32;
.super Ljava/lang/Object;
.source "UnsignedInteger32.java"


# static fields
.field public static final MAX_VALUE:J = 0xffffffffL

.field public static final MIN_VALUE:J

.field public static final ZERO:Lcom/sshtools/common/util/UnsignedInteger32;


# instance fields
.field private final value:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    sput-object v0, Lcom/sshtools/common/util/UnsignedInteger32;->ZERO:Lcom/sshtools/common/util/UnsignedInteger32;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 54
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/util/UnsignedInteger32;->value:Ljava/lang/Long;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/util/UnsignedInteger32;->value:Ljava/lang/Long;

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
.end method

.method public static add(Lcom/sshtools/common/util/UnsignedInteger32;J)Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 3

    .line 148
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {p0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    return-object v0
.end method

.method public static add(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 3

    .line 136
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {p0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide p0

    add-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    return-object v0
.end method

.method public static deduct(Lcom/sshtools/common/util/UnsignedInteger32;J)Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 3

    .line 157
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {p0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    return-object v0
.end method

.method public static deduct(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 3

    .line 153
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {p0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide p0

    sub-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 120
    instance-of v0, p1, Lcom/sshtools/common/util/UnsignedInteger32;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_0
    check-cast p1, Lcom/sshtools/common/util/UnsignedInteger32;

    iget-object p1, p1, Lcom/sshtools/common/util/UnsignedInteger32;->value:Ljava/lang/Long;

    iget-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger32;->value:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger32;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger32;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger32;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sshtools/common/util/UnsignedInteger32;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
