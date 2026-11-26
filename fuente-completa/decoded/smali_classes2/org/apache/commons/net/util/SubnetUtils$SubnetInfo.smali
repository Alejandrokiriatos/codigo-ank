.class public final Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
.super Ljava/lang/Object;
.source "SubnetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/SubnetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubnetInfo"
.end annotation


# static fields
.field private static final UNSIGNED_INT_MASK:J = 0xffffffffL


# instance fields
.field final synthetic this$0:Lorg/apache/commons/net/util/SubnetUtils;


# direct methods
.method private constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;Lorg/apache/commons/net/util/SubnetUtils$1;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)I
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)I
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result p0

    return p0
.end method

.method private broadcastLong()J
    .locals 4

    .line 107
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private high()I
    .locals 4

    .line 245
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private low()I
    .locals 4

    .line 290
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$900(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$900(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private networkLong()J
    .locals 4

    .line 295
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$900(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public asInteger(Ljava/lang/String;)I
    .locals 0

    .line 103
    invoke-static {p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$700(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressCount()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCountLong()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v0, v0

    return v0

    .line 130
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Count is larger than an integer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAddressCountLong()J
    .locals 5

    .line 143
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v0

    .line 144
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 145
    iget-object v2, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v2}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-wide v2

    :cond_1
    return-wide v0
.end method

.method public getAllAddresses()[Ljava/lang/String;
    .locals 5

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCount()I

    move-result v0

    .line 161
    new-array v1, v0, [Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v0

    .line 166
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-gt v2, v0, :cond_1

    .line 167
    invoke-static {v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public getBroadcastAddress()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCidrSignature()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$700(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$800(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighAddress()Ljava/lang/String;
    .locals 1

    .line 196
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLowAddress()Ljava/lang/String;
    .locals 1

    .line 205
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$800(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkAddress()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$900(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextAddress()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$700(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousAddress()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$700(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInRange(I)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 261
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result p1

    int-to-long v5, p1

    and-long/2addr v5, v3

    .line 262
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result p1

    int-to-long v7, p1

    and-long/2addr v3, v7

    cmp-long p1, v1, v5

    if-ltz p1, :cond_1

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public isInRange(Ljava/lang/String;)Z
    .locals 0

    .line 274
    invoke-static {p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->isInRange(I)Z

    move-result p1

    return p1
.end method

.method public iterableAddressStrings()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;-><init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;Lorg/apache/commons/net/util/SubnetUtils$1;)V

    return-object v0
.end method

.method public streamAddressStrings()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->iterableAddressStrings()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CIDR Signature:\t["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getCidrSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n  Netmask: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetmask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n  Network: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetworkAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n  Broadcast: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getBroadcastAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n  First address: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getLowAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n  Last address: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 324
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getHighAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n  Address Count: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 325
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCountLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
