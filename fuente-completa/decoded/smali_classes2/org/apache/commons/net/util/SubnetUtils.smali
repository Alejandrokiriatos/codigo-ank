.class public Lorg/apache/commons/net/util/SubnetUtils;
.super Ljava/lang/Object;
.source "SubnetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;,
        Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;,
        Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;
    }
.end annotation


# static fields
.field private static final ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final CIDR_PATTERN:Ljava/util/regex/Pattern;

.field private static final IP_ADDRESS:Ljava/lang/String; = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

.field private static final NBITS:I = 0x20

.field private static final PARSE_FAIL:Ljava/lang/String; = "Could not parse [%s]"

.field private static final SLASH_FORMAT:Ljava/lang/String; = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,2})"


# instance fields
.field private final address:I

.field private final broadcast:I

.field private inclusiveHostCount:Z

.field private final netmask:I

.field private final network:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 335
    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/util/SubnetUtils;->ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 336
    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/util/SubnetUtils;->CIDR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    sget-object v0, Lorg/apache/commons/net/util/SubnetUtils;->CIDR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->matchAddress(Ljava/util/regex/Matcher;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    const/4 v1, 0x5

    .line 426
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->rangeCheck(III)I

    move-result v0

    sub-int/2addr v2, v0

    const-wide v0, 0xffffffffL

    shl-long/2addr v0, v2

    long-to-int v0, v0

    .line 436
    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    and-int/2addr p1, v0

    .line 439
    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    not-int v0, v0

    or-int/2addr p1, v0

    .line 442
    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    return-void

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not parse [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    invoke-static {p1}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    .line 454
    invoke-static {p2}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    neg-int v1, v0

    and-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    not-int v2, v0

    if-ne v1, v2, :cond_0

    and-int/2addr p1, v0

    .line 461
    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    not-int p2, v0

    or-int/2addr p1, p2

    .line 464
    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    return-void

    .line 457
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not parse [%s]"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$300(I)[I
    .locals 0

    .line 31
    invoke-static {p0}, Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400([I)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0}, Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .locals 0

    .line 31
    invoke-static {p0}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    return p0
.end method

.method static synthetic access$700(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    return p0
.end method

.method static synthetic access$800(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    return p0
.end method

.method static synthetic access$900(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 0

    .line 31
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    return p0
.end method

.method private static format([I)Ljava/lang/String;
    .locals 4

    .line 344
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 347
    :goto_0
    aget v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne v2, v0, :cond_0

    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v3, 0x2e

    .line 351
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static matchAddress(Ljava/util/regex/Matcher;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    const/4 v3, 0x4

    if-gt v1, v3, :cond_0

    .line 360
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xff

    invoke-static {v3, v0, v4}, Lorg/apache/commons/net/util/SubnetUtils;->rangeCheck(III)I

    move-result v3

    and-int/2addr v3, v4

    rsub-int/lit8 v4, v1, 0x4

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static rangeCheck(III)I
    .locals 3

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    return p0

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "] not in range ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toArray4(I)[I
    .locals 4

    const/4 v0, 0x4

    .line 380
    new-array v0, v0, [I

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_0

    .line 382
    aget v2, v0, v1

    rsub-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x8

    ushr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static toInteger(Ljava/lang/String;)I
    .locals 2

    .line 391
    sget-object v0, Lorg/apache/commons/net/util/SubnetUtils;->ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->matchAddress(Ljava/util/regex/Matcher;)I

    move-result p0

    return p0

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not parse [%s]"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
    .locals 2

    .line 473
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils;Lorg/apache/commons/net/util/SubnetUtils$1;)V

    return-object v0
.end method

.method public getNext()Lorg/apache/commons/net/util/SubnetUtils;
    .locals 3

    .line 482
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNextAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetmask()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPrevious()Lorg/apache/commons/net/util/SubnetUtils;
    .locals 3

    .line 491
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getPreviousAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetmask()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isInclusiveHostCount()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    return v0
.end method

.method public setInclusiveHostCount(Z)V
    .locals 0

    .line 512
    iput-boolean p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 523
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
