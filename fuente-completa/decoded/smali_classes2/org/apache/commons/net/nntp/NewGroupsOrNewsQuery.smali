.class public final Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;
.super Ljava/lang/Object;
.source "NewGroupsOrNewsQuery.java"


# instance fields
.field private final date:Ljava/lang/String;

.field private distributions:Ljava/lang/StringBuffer;

.field private final isGMT:Z

.field private newsgroups:Ljava/lang/StringBuffer;

.field private final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Z)V
    .locals 7

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->distributions:Ljava/lang/StringBuffer;

    .line 61
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->newsgroups:Ljava/lang/StringBuffer;

    .line 62
    iput-boolean p2, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT:Z

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 71
    const-string v3, "00"

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    sub-int/2addr v2, v4

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :goto_0
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 82
    const-string v5, "01"

    const/16 v6, 0x30

    if-ne v2, v0, :cond_1

    .line 83
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    .line 86
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x5

    .line 92
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 97
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-ne v2, v4, :cond_4

    .line 100
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 102
    :cond_4
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :goto_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->date:Ljava/lang/String;

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v1, 0xb

    .line 110
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 115
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    if-ne v2, v4, :cond_6

    .line 118
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 120
    :cond_6
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v1, 0xc

    .line 124
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 129
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    if-ne v2, v4, :cond_8

    .line 132
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 134
    :cond_8
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/16 v1, 0xd

    .line 138
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_9

    .line 143
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    if-ne v1, v4, :cond_a

    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 148
    :cond_a
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :goto_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addDistribution(Ljava/lang/String;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->distributions:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    const/16 v1, 0x2c

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->distributions:Ljava/lang/StringBuffer;

    .line 167
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->distributions:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public addNewsgroup(Ljava/lang/String;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->newsgroups:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    const/16 v1, 0x2c

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->newsgroups:Ljava/lang/StringBuffer;

    .line 183
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->newsgroups:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDistributions()Ljava/lang/String;
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->distributions:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewsgroups()Ljava/lang/String;
    .locals 2

    .line 210
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->newsgroups:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->time:Ljava/lang/String;

    return-object v0
.end method

.method public isGMT()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT:Z

    return v0
.end method

.method public omitNewsgroup(Ljava/lang/String;)V
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->addNewsgroup(Ljava/lang/String;)V

    return-void
.end method
