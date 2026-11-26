.class public interface abstract Lcom/sshtools/common/sftp/SftpExtension;
.super Ljava/lang/Object;
.source "SftpExtension.java"


# static fields
.field public static final SSH_FXP_EXTENDED_REPLY:I = 0xc9


# virtual methods
.method public abstract getDefaultData()[B
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isDeclaredInVersion()Z
.end method

.method public abstract processExtendedMessage(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/sftp/SftpSubsystem;)V
.end method

.method public abstract processMessage(Lcom/sshtools/common/util/ByteArrayReader;ILcom/sshtools/common/sftp/SftpSubsystem;)V
.end method

.method public abstract supportsExtendedMessage(I)Z
.end method
