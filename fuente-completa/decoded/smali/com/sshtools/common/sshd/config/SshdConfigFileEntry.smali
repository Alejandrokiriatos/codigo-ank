.class public abstract Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;
.super Ljava/lang/Object;
.source "SshdConfigFileEntry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFormattedLine()Ljava/lang/String;
.end method

.method public getNext()Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;
    .locals 1

    .line 42
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isCommentedOut()Z
.end method

.method public abstract setCommentedOut(Z)V
.end method

.method public setNext(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V
    .locals 0

    .line 46
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method
