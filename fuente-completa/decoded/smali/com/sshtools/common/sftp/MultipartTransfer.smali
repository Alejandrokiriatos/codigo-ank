.class public interface abstract Lcom/sshtools/common/sftp/MultipartTransfer;
.super Ljava/lang/Object;
.source "MultipartTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/sftp/MultipartTransfer$MultipartCompletionCallback;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract combineParts()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract getExists()Z
.end method

.method public abstract getFile()Lcom/sshtools/common/files/AbstractFile;
.end method

.method public abstract getMinimumPartSize()Ljava/lang/Long;
.end method

.method public abstract getPart(Ljava/lang/String;)Lcom/sshtools/common/sftp/Multipart;
.end method

.method public abstract getParts()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/sftp/Multipart;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getUploadId()Ljava/lang/String;
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract onComplete(Lcom/sshtools/common/sftp/MultipartTransfer$MultipartCompletionCallback;)Lcom/sshtools/common/sftp/MultipartTransfer;
.end method

.method public abstract openPart(Lcom/sshtools/common/sftp/Multipart;)Lcom/sshtools/common/sftp/OpenFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method
