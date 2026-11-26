.class final Lorg/apache/commons/net/nntp/NntpThreadContainer;
.super Ljava/lang/Object;
.source "NntpThreadContainer.java"


# instance fields
.field child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

.field next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

.field parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

.field threadable:Lorg/apache/commons/net/nntp/Threadable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method findChild(Lorg/apache/commons/net/nntp/NntpThreadContainer;)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 43
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->findChild(Lorg/apache/commons/net/nntp/NntpThreadContainer;)Z

    move-result p1

    return p1
.end method

.method flush()V
    .locals 3

    .line 51
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no threadable in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 57
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v1, :cond_3

    .line 58
    iget-object v2, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :goto_1
    invoke-interface {v1, v2}, Lorg/apache/commons/net/nntp/Threadable;->setChild(Lorg/apache/commons/net/nntp/Threadable;)V

    .line 61
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v1, :cond_4

    .line 62
    invoke-virtual {v1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->flush()V

    .line 63
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 66
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v1, :cond_6

    .line 67
    iget-object v2, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v2, :cond_5

    move-object v2, v0

    goto :goto_2

    :cond_5
    iget-object v2, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :goto_2
    invoke-interface {v1, v2}, Lorg/apache/commons/net/nntp/Threadable;->setNext(Lorg/apache/commons/net/nntp/Threadable;)V

    .line 70
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v1, :cond_7

    .line 71
    invoke-virtual {v1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->flush()V

    .line 72
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 75
    :cond_7
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    return-void
.end method

.method reverseChildren()V
    .locals 5

    .line 82
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v0, :cond_2

    .line 86
    iget-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 87
    iput-object v3, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_1

    .line 86
    :cond_0
    iget-object v3, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_1
    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_0

    .line 90
    :cond_1
    iput-object v3, p0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_2
    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v3}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->reverseChildren()V

    .line 93
    iget-object v3, v3, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_2

    :cond_2
    return-void
.end method
