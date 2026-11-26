.class final Lorg/apache/commons/net/ftp/DurationUtils;
.super Ljava/lang/Object;
.source "DurationUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isPositive(Ljava/time/Duration;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/time/Duration;->isZero()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static toMillisInt(Ljava/time/Duration;)I
    .locals 4

    .line 36
    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const-wide/32 v2, 0x7fffffff

    .line 37
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    long-to-int p0, v0

    return p0

    :cond_0
    const-wide/32 v2, -0x80000000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method static zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;
    .locals 0

    if-nez p0, :cond_0

    .line 41
    sget-object p0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    :cond_0
    return-object p0
.end method
