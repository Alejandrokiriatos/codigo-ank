.class public Lcom/sshtools/common/sshd/config/CommentEntry;
.super Lcom/sshtools/common/sshd/config/NonValidatingFileEntry;
.source "CommentEntry.java"


# instance fields
.field comment:Ljava/lang/String;

.field loaded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/sshtools/common/sshd/config/NonValidatingFileEntry;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/CommentEntry;->comment:Ljava/lang/String;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/sshtools/common/sshd/config/CommentEntry;->loaded:Z

    return-void
.end method


# virtual methods
.method public getFormattedLine()Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/CommentEntry;->comment:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "# %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/CommentEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public isCommentedOut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/sshtools/common/sshd/config/CommentEntry;->loaded:Z

    return v0
.end method

.method public isNotLoaded()Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/CommentEntry;->isLoaded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 0

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/CommentEntry;->comment:Ljava/lang/String;

    return-void
.end method
