.class public Lcom/sshtools/common/ssh/components/ComponentFactory;
.super Ljava/lang/Object;
.source "ComponentFactory.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sshtools/common/ssh/components/Component;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private componentManager:Lcom/sshtools/common/ssh/components/ComponentManager;

.field private locked:Z

.field protected order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected supported:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/components/ComponentInstanceFactory<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->locked:Z

    .line 64
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->componentManager:Lcom/sshtools/common/ssh/components/ComponentManager;

    return-void
.end method

.method private varargs declared-synchronized createDelimitedList(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 263
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 267
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->isDisabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 p1, 0x0

    move v2, p1

    .line 271
    :goto_0
    iget-object v3, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    if-eq v1, v2, :cond_5

    .line 272
    iget-object v3, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sshtools/common/ssh/components/ComponentFactory;->isDisabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 276
    :cond_1
    array-length v3, p2

    move v4, p1

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, p2, v4

    .line 277
    iget-object v6, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 283
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 284
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    :cond_4
    iget-object v3, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private isDisabled(Ljava/lang/String;)Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->componentManager:Lcom/sshtools/common/ssh/components/ComponentManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/ComponentManager;->isDisabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public declared-synchronized add(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/ComponentInstanceFactory<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->locked:Z

    if-nez v0, :cond_2

    .line 215
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;->getKeys()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 216
    iget-object v4, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v4, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_1
    monitor-exit p0

    return-void

    .line 211
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Component factory is locked. Components cannot be added"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized changePositionofAlgorithm(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x4

    if-ltz p2, :cond_4

    .line 74
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 80
    iget-object p2, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 85
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-lez v0, :cond_2

    .line 87
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 94
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 75
    :cond_3
    :try_start_1
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "%s is not a supported algorithm"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 70
    :cond_4
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "index out of bounds"

    invoke-direct {p1, p2, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 313
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->locked:Z

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 320
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 314
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component factory is locked. Removing all components renders it unusable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 324
    new-instance v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->componentManager:Lcom/sshtools/common/ssh/components/ComponentManager;

    invoke-direct {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    .line 325
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    .line 326
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    return-object v0
.end method

.method public configureSecurityLevel(Lcom/sshtools/common/ssh/SecurityLevel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 358
    invoke-virtual {p0, v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/SecureComponent;

    .line 359
    invoke-static {v3}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    .line 360
    invoke-interface {v3}, Lcom/sshtools/common/ssh/SecureComponent;->getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/ssh/SecurityLevel;->ordinal()I

    move-result v4

    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SecurityLevel;->ordinal()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 361
    invoke-virtual {p0, v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 368
    :cond_2
    new-instance p1, Lcom/sshtools/common/ssh/components/ComponentFactory$1;

    invoke-direct {p1, p0}, Lcom/sshtools/common/ssh/components/ComponentFactory$1;-><init>(Lcom/sshtools/common/ssh/components/ComponentFactory;)V

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 375
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 377
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/SecureComponent;

    .line 378
    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    return-void

    .line 382
    :cond_4
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "No algorithms supported"

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected createInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/sshtools/common/ssh/components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    .line 253
    new-array v0, p1, [Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/Component;

    return-object p1
.end method

.method public declared-synchronized createNewOrdering([I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    .line 127
    :try_start_0
    array-length v0, p1

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 133
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 134
    aget v3, p1, v1

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 138
    iget-object v3, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    aget v6, p1, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 141
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 143
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 144
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    aget v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 147
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    iget-object v3, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    iget-object v3, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 128
    :cond_4
    :try_start_1
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "too many indicies"

    invoke-direct {p1, v0, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs filter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    return-object p1

    .line 438
    :cond_0
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 440
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 441
    iget-object v3, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_2
    invoke-static {p2}, Lcom/sshtools/common/util/Utils;->csv(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;->create()Lcom/sshtools/common/ssh/components/Component;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 236
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 240
    :cond_0
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public hasComponents()Z
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public list()Ljava/lang/String;
    .locals 1

    .line 430
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized list(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 195
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->createDelimitedList(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs declared-synchronized list(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 180
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->createDelimitedList(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public lockComponents()V
    .locals 1

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->locked:Z

    return-void
.end method

.method public names()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized order([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 109
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 110
    iget-object v5, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    iput-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    .line 122
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 116
    :cond_2
    :try_start_1
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "No algorithms supported"

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public order()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized order(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->order([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeAllBut(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 335
    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 337
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 339
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 344
    invoke-virtual {p1, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    invoke-virtual {p0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 348
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public selectStrongestComponent([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 392
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->supported:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 393
    invoke-virtual {p0, v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/ssh/SecureComponent;

    .line 394
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 398
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 399
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/common/ssh/SecureComponent;

    .line 400
    invoke-static {v4}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2

    .line 401
    invoke-static {v2}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    goto :goto_2

    .line 404
    :cond_1
    invoke-interface {v4}, Lcom/sshtools/common/ssh/SecureComponent;->getPriority()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2}, Lcom/sshtools/common/ssh/SecureComponent;->getPriority()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v5

    if-lez v5, :cond_2

    :goto_2
    move-object v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 411
    :cond_3
    invoke-static {v2}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v2, :cond_5

    .line 415
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 416
    invoke-interface {v2}, Lcom/sshtools/common/ssh/SecureComponent;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Selecting strongest component {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    :cond_4
    invoke-interface {v2}, Lcom/sshtools/common/ssh/SecureComponent;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 412
    :cond_5
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "Failed to negotiate component"

    const/16 v1, 0x9

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public toArray()[Ljava/lang/String;
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/ComponentFactory;->order:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
