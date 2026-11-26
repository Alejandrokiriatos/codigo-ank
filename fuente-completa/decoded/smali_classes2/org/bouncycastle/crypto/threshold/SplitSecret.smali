.class public interface abstract Lorg/bouncycastle/crypto/threshold/SplitSecret;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getSecret()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSecretShares()[Lorg/bouncycastle/crypto/threshold/SecretShare;
.end method
