.class public Lcom/sshtools/common/publickey/InvalidPassphraseException;
.super Ljava/lang/Exception;
.source "InvalidPassphraseException.java"


# static fields
.field private static final serialVersionUID:J = -0x143e341ebe38037aL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    const-string v0, "The passphrase supplied was invalid!"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
