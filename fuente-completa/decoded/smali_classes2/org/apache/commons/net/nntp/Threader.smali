.class public Lorg/apache/commons/net/nntp/Threader;
.super Ljava/lang/Object;
.source "Threader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/Threadable;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/NntpThreadContainer;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadId()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 54
    iget-object v3, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v3, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Bogus-id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_0

    .line 61
    :cond_0
    iput-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 67
    new-instance v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-direct {v1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 68
    iput-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 69
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_2
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadReferences()[Ljava/lang/String;

    move-result-object p1

    .line 77
    array-length v0, p1

    const/4 v3, 0x0

    move-object v4, v2

    :goto_1
    if-ge v3, v0, :cond_5

    aget-object v5, p1, v3

    .line 78
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v6, :cond_3

    .line 82
    new-instance v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-direct {v6}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 83
    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v4, :cond_4

    .line 89
    iget-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v5, :cond_4

    if-eq v4, v6, :cond_4

    invoke-virtual {v6, v4}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->findChild(Lorg/apache/commons/net/nntp/NntpThreadContainer;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 91
    iput-object v4, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 92
    iget-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 93
    iput-object v6, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-object v4, v6

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_7

    if-eq v4, v1, :cond_6

    .line 101
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->findChild(Lorg/apache/commons/net/nntp/NntpThreadContainer;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move-object v4, v2

    .line 108
    :cond_7
    iget-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz p1, :cond_c

    .line 112
    iget-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object p1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    move-object p2, v2

    :goto_2
    if-eqz p1, :cond_9

    if-ne p1, v1, :cond_8

    goto :goto_3

    :cond_8
    iget-object p2, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_2

    :cond_9
    :goto_3
    if-eqz p1, :cond_b

    if-nez p2, :cond_a

    .line 124
    iget-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object p2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object p2, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_4

    .line 126
    :cond_a
    iget-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object p1, p2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 129
    :goto_4
    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 130
    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_5

    .line 119
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Didnt find "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " in parent "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    if-eqz v4, :cond_d

    .line 135
    iput-object v4, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 136
    iget-object p1, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object p1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 137
    iput-object v1, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :cond_d
    return-void
.end method

.method private findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/NntpThreadContainer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/NntpThreadContainer;",
            ">;)",
            "Lorg/apache/commons/net/nntp/NntpThreadContainer;"
        }
    .end annotation

    .line 148
    new-instance v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 149
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 151
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v2, :cond_0

    .line 152
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v2, :cond_1

    .line 155
    iget-object v2, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 156
    iput-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_0

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "c.next is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method

.method private gatherSubjects(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V
    .locals 9

    .line 171
    iget-object v0, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_0

    .line 176
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 179
    iget-object v2, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_1
    if-eqz v2, :cond_6

    .line 180
    iget-object v3, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v3, :cond_1

    .line 186
    iget-object v3, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v3, v3, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 189
    :cond_1
    invoke-interface {v3}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 191
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 195
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v4, :cond_4

    .line 204
    iget-object v5, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_3

    iget-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v5, :cond_5

    iget-object v4, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 205
    invoke-interface {v4}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v4, :cond_5

    iget-object v4, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v4}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v4

    if-nez v4, :cond_5

    .line 206
    :cond_4
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 179
    :cond_5
    :goto_2
    iget-object v2, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    return-void

    .line 221
    :cond_7
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    const/4 v3, 0x0

    move-object v4, v3

    :goto_3
    if-eqz v1, :cond_15

    .line 222
    iget-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_8

    .line 226
    iget-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 229
    :cond_8
    invoke-interface {v5}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 232
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_9

    .line 236
    :cond_9
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-ne v5, v1, :cond_a

    goto/16 :goto_9

    :cond_a
    if-nez v4, :cond_b

    .line 245
    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v6, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_4

    .line 247
    :cond_b
    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v6, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 249
    :goto_4
    iput-object v3, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 251
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v6, :cond_f

    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v6, :cond_f

    .line 254
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_5
    if-eqz v6, :cond_c

    iget-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v7, :cond_c

    iget-object v6, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_d

    .line 259
    iget-object v7, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 262
    :cond_d
    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_6
    if-eqz v6, :cond_e

    .line 263
    iput-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 262
    iget-object v6, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_6

    .line 266
    :cond_e
    iput-object v3, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_a

    .line 267
    :cond_f
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v6, :cond_12

    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v6, :cond_10

    iget-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_8

    .line 275
    :cond_10
    new-instance v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;

    invoke-direct {v6}, Lorg/apache/commons/net/nntp/NntpThreadContainer;-><init>()V

    .line 276
    iget-object v7, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iput-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 277
    iget-object v7, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 279
    iget-object v7, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_7
    if-eqz v7, :cond_11

    .line 280
    iput-object v6, v7, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 279
    iget-object v7, v7, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_7

    .line 283
    :cond_11
    iput-object v3, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 284
    iput-object v3, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 286
    iput-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 287
    iput-object v5, v6, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 290
    iput-object v1, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 291
    iput-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_a

    .line 269
    :cond_12
    :goto_8
    iput-object v5, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 270
    iget-object v6, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v6, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 271
    iput-object v1, v5, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_a

    :cond_13
    :goto_9
    move-object v4, v1

    :goto_a
    if-nez v2, :cond_14

    move-object v1, v3

    goto :goto_b

    .line 221
    :cond_14
    iget-object v1, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_b
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_3

    .line 297
    :cond_15
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private pruneEmptyContainers(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V
    .locals 6

    .line 311
    iget-object v0, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_8

    .line 316
    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v4, :cond_1

    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    .line 318
    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v0, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_3

    .line 320
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v0, v3, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_3

    .line 325
    :cond_1
    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v4, :cond_5

    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v4, :cond_2

    iget-object v4, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v4, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v4, :cond_5

    .line 328
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v3, :cond_3

    .line 332
    iput-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_1

    .line 334
    :cond_3
    iput-object v1, v3, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_1
    move-object v4, v1

    .line 340
    :goto_2
    iget-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v5, :cond_4

    .line 341
    iget-object v5, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 340
    iget-object v4, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_2

    .line 344
    :cond_4
    iget-object v5, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->parent:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    .line 345
    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iput-object v0, v4, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_3

    .line 353
    :cond_5
    iget-object v3, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-eqz v3, :cond_6

    .line 356
    invoke-direct {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V

    :cond_6
    move-object v3, v0

    :goto_3
    move-object v0, v1

    if-nez v0, :cond_7

    move-object v1, v2

    goto :goto_0

    .line 313
    :cond_7
    iget-object v1, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 373
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 376
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/net/nntp/Threadable;

    .line 377
    invoke-interface {v2}, Lorg/apache/commons/net/nntp/Threadable;->isDummy()Z

    move-result v3

    if-nez v3, :cond_1

    .line 378
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/net/nntp/Threader;->buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 386
    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/commons/net/nntp/Threader;->findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/NntpThreadContainer;

    move-result-object p1

    .line 387
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 390
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V

    .line 392
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->reverseChildren()V

    .line 393
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->gatherSubjects(Lorg/apache/commons/net/nntp/NntpThreadContainer;)V

    .line 395
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v1, :cond_7

    .line 399
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    :goto_1
    if-eqz v1, :cond_5

    .line 400
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v2, :cond_4

    .line 401
    iget-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v2, v2, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v2}, Lorg/apache/commons/net/nntp/Threadable;->makeDummy()Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 399
    :cond_4
    iget-object v1, v1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->next:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    goto :goto_1

    .line 405
    :cond_5
    iget-object v1, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lorg/apache/commons/net/nntp/NntpThreadContainer;->child:Lorg/apache/commons/net/nntp/NntpThreadContainer;

    iget-object v0, v0, Lorg/apache/commons/net/nntp/NntpThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 406
    :goto_2
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NntpThreadContainer;->flush()V

    return-object v0

    .line 396
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "root node has a next:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .line 419
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object p1

    return-object p1
.end method

.method public thread([Lorg/apache/commons/net/nntp/Threadable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 436
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object p1

    return-object p1
.end method
