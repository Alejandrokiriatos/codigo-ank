.class public Lcom/sshtools/common/util/ExpiringConcurrentHashMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "ExpiringConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/util/ExpiringConcurrentHashMap$ExpiryConfiguration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x42f8c65afd6bea6aL


# instance fields
.field private entryTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private expiryConfig:Lcom/sshtools/common/util/ExpiringConcurrentHashMap$ExpiryConfiguration;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->entryTime:Ljava/util/Map;

    .line 38
    new-instance v0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap$1;-><init>(Lcom/sshtools/common/util/ExpiringConcurrentHashMap;J)V

    iput-object v0, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->expiryConfig:Lcom/sshtools/common/util/ExpiringConcurrentHashMap$ExpiryConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/util/ExpiringConcurrentHashMap$ExpiryConfiguration;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->entryTime:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->expiryConfig:Lcom/sshtools/common/util/ExpiringConcurrentHashMap$ExpiryConfiguration;

    return-void
.end method

.method private doPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->entryTime:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 63
    iget-object v1, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->entryTime:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private purgeEntries()V
    .locals 8

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 94
    iget-object v2, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->entryTime:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 95
    iget-object v4, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->entryTime:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->expiryConfig:Lcom/sshtools/common/util/ExpiringConcurrentHashMap$ExpiryConfiguration;

    invoke-interface {v6}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap$ExpiryConfiguration;->expiresInMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 96
    invoke-virtual {p0, v3}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v4, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->entryTime:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->purgeEntries()V

    .line 89
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getExpiryTime()J
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->expiryConfig:Lcom/sshtools/common/util/ExpiringConcurrentHashMap$ExpiryConfiguration;

    invoke-interface {v0}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap$ExpiryConfiguration;->expiresInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->purgeEntries()V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->purgeEntries()V

    .line 71
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 72
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->purgeEntries()V

    .line 79
    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->doPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
