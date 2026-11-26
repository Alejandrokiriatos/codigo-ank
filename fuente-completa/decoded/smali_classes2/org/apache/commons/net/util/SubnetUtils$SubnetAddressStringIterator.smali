.class final Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;
.super Ljava/lang/Object;
.source "SubnetUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/SubnetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubnetAddressStringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private currentAddress:I

.field private final subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;


# direct methods
.method private constructor <init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 71
    invoke-static {p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->access$100(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->currentAddress:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;Lorg/apache/commons/net/util/SubnetUtils$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;-><init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 76
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCountLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->currentAddress:I

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->access$200(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 81
    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->currentAddress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->currentAddress:I

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
