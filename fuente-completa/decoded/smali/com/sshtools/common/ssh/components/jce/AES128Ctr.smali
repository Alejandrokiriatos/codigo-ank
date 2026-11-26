.class public Lcom/sshtools/common/ssh/components/jce/AES128Ctr;
.super Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;
.source "AES128Ctr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/AES128Ctr$AES128CtrFactory;
    }
.end annotation


# static fields
.field private static final CIPHER:Ljava/lang/String; = "aes128-ctr"


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    sget-object v5, Lcom/sshtools/common/ssh/SecurityLevel;->STRONG:Lcom/sshtools/common/ssh/SecurityLevel;

    const/16 v6, 0x7d0

    const-string v1, "AES/CTR/NoPadding"

    const-string v2, "AES"

    const/16 v3, 0x10

    const-string v4, "aes128-ctr"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method
