.class public abstract Lcom/sshtools/common/files/AbstractFileImpl;
.super Ljava/lang/Object;
.source "AbstractFileImpl.java"

# interfaces
.implements Lcom/sshtools/common/files/AbstractFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/files/AbstractFileImpl$AppendOutputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sshtools/common/files/AbstractFile;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/files/AbstractFile;"
    }
.end annotation


# instance fields
.field protected fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sshtools/common/files/AbstractFileFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sshtools/common/files/AbstractFileImpl;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    return-void
.end method


# virtual methods
.method protected abstract doEquals(Ljava/lang/Object;)Z
.end method

.method protected abstract doHashCode()I
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/AbstractFileImpl;->doEquals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "TT;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileImpl;->fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;

    return-object v0
.end method

.method public getOutputStream(Z)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/sshtools/common/files/AbstractFileImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Lcom/sshtools/common/files/AbstractFileImpl$AppendOutputStream;

    invoke-direct {p1, p0}, Lcom/sshtools/common/files/AbstractFileImpl$AppendOutputStream;-><init>(Lcom/sshtools/common/files/AbstractFileImpl;)V

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/sshtools/common/files/AbstractFileImpl;->doHashCode()I

    move-result v0

    return v0
.end method
