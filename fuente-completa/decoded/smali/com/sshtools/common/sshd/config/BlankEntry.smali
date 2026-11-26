.class public Lcom/sshtools/common/sshd/config/BlankEntry;
.super Lcom/sshtools/common/sshd/config/NonValidatingFileEntry;
.source "BlankEntry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/sshtools/common/sshd/config/NonValidatingFileEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedLine()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, ""

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isCommentedOut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 0

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
