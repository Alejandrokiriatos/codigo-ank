.class public final synthetic Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/foxdebug/acode/rk/auth/Authenticator;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lcom/foxdebug/acode/rk/auth/Authenticator;Landroid/net/Uri;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda0;->f$0:Lcom/foxdebug/acode/rk/auth/Authenticator;

    iput-object p2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda0;->f$2:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda0;->f$0:Lcom/foxdebug/acode/rk/auth/Authenticator;

    iget-object v1, p0, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/foxdebug/acode/rk/auth/Authenticator$$ExternalSyntheticLambda0;->f$2:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1, v2}, Lcom/foxdebug/acode/rk/auth/Authenticator;->lambda$startLogin$2$com-foxdebug-acode-rk-auth-Authenticator(Landroid/net/Uri;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
