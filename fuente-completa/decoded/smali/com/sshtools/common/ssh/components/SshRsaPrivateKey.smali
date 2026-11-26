.class public interface abstract Lcom/sshtools/common/ssh/components/SshRsaPrivateKey;
.super Ljava/lang/Object;
.source "SshRsaPrivateKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPrivateKey;


# virtual methods
.method public abstract getModulus()Ljava/math/BigInteger;
.end method

.method public abstract getPrivateExponent()Ljava/math/BigInteger;
.end method

.method public abstract sign([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
