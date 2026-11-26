.class public Lcom/sshtools/common/ssh/components/jce/BlowfishCbc;
.super Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;
.source "BlowfishCbc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/BlowfishCbc$BlowfishCbcFactory;
    }
.end annotation


# static fields
.field private static final CIPHER:Ljava/lang/String; = "blowfish-cbc"


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    sget-object v5, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    const/4 v6, 0x0

    const-string v1, "Blowfish/CBC/NoPadding"

    const-string v2, "Blowfish"

    const/16 v3, 0x10

    const-string v4, "blowfish-cbc"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sshtools/common/ssh/components/jce/AbstractJCECipher;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method
