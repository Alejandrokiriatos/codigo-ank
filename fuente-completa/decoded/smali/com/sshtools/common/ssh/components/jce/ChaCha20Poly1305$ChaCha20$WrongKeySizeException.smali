.class public Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException;
.super Ljava/lang/Exception;
.source "ChaCha20Poly1305.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrongKeySizeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x40818eec4e3fd37L


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20$WrongKeySizeException;->this$0:Lcom/sshtools/common/ssh/components/jce/ChaCha20Poly1305$ChaCha20;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
