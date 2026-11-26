.class public final synthetic Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda8;->f$0:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$$ExternalSyntheticLambda8;->f$0:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p1}, Lcom/foxdebug/sftp/Sftp;->lambda$deleteProfile$8(Lorg/apache/cordova/CallbackContext;Landroid/content/DialogInterface;)V

    return-void
.end method
