.class final Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;
.super Ljava/lang/Object;
.source "SubnetUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/SubnetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubnetAddressStringIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;


# direct methods
.method private constructor <init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;Lorg/apache/commons/net/util/SubnetUtils$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;-><init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;-><init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;Lorg/apache/commons/net/util/SubnetUtils$1;)V

    return-object v0
.end method
