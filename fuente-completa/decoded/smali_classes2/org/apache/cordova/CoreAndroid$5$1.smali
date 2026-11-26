.class Lorg/apache/cordova/CoreAndroid$5$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "CoreAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CoreAndroid$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/CoreAndroid$5;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CoreAndroid$5;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lorg/apache/cordova/CoreAndroid$5$1;->this$1:Lorg/apache/cordova/CoreAndroid$5;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/apache/cordova/CoreAndroid$5$1;->this$1:Lorg/apache/cordova/CoreAndroid$5;

    iget-object v0, v0, Lorg/apache/cordova/CoreAndroid$5;->this$0:Lorg/apache/cordova/CoreAndroid;

    invoke-static {v0}, Lorg/apache/cordova/CoreAndroid;->-$$Nest$mdispatchBackKeyEvent(Lorg/apache/cordova/CoreAndroid;)V

    return-void
.end method
