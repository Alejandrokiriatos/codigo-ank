.class public final synthetic Lorg/apache/cordova/file/FileUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/webkit/WebViewAssetLoader$PathHandler;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/file/FileUtils;

.field public final synthetic f$1:Lorg/apache/cordova/CordovaResourceApi;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CordovaResourceApi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/file/FileUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/cordova/file/FileUtils;

    iput-object p2, p0, Lorg/apache/cordova/file/FileUtils$$ExternalSyntheticLambda0;->f$1:Lorg/apache/cordova/CordovaResourceApi;

    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/cordova/file/FileUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/cordova/file/FileUtils;

    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils$$ExternalSyntheticLambda0;->f$1:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {v0, v1, p1}, Lorg/apache/cordova/file/FileUtils;->lambda$getPathHandler$0$org-apache-cordova-file-FileUtils(Lorg/apache/cordova/CordovaResourceApi;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
