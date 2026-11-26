.class public Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;
.super Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;
.source "SshdConfigKeyValueEntry.java"


# instance fields
.field private commentedOut:Z

.field private indented:Z

.field private key:Ljava/lang/String;

.field private next:Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->key:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    .line 42
    iput-boolean p3, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->commentedOut:Z

    .line 43
    iput-boolean p4, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->indented:Z

    return-void
.end method


# virtual methods
.method public getFormattedLine()Ljava/lang/String;
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->indented:Z

    if-eqz v0, :cond_1

    .line 49
    iget-boolean v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->commentedOut:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "#\t%s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\t%s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_1
    iget-boolean v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->commentedOut:Z

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "#%s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getNext()Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->getNext()Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->next:Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueParts()[Ljava/lang/String;
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 122
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hasCommaSV()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->next:Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasParts()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasSpaceSV()Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isCommentedOut()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->commentedOut:Z

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->commentedOut:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->key:Ljava/lang/String;

    return-void
.end method

.method public setNext(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V
    .locals 3

    .line 72
    check-cast p1, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    invoke-virtual {p1}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->next:Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Next value and this entry must have the same key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->getFormattedLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
