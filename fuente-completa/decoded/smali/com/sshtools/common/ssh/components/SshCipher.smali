.class public interface abstract Lcom/sshtools/common/ssh/components/SshCipher;
.super Ljava/lang/Object;
.source "SshCipher.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshComponent;
.implements Lcom/sshtools/common/ssh/SecureComponent;


# static fields
.field public static final DECRYPT_MODE:I = 0x1

.field public static final ENCRYPT_MODE:I


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getBlockSize()I
.end method

.method public abstract getKeyLength()I
.end method

.method public abstract getMacLength()I
.end method

.method public abstract getPriority()I
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public abstract getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
.end method

.method public abstract init(I[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isMAC()Z
.end method

.method public abstract transform([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract transform([BI[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
