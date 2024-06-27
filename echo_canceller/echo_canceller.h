
#ifdef __cplusplus
extern "C" {
#endif

typedef void *EchoCancellerRef;

EchoCancellerRef EchoCancellerCreate(int sampleRate);
void EchoCancellerDestroy(EchoCancellerRef opaquePointer);

// audio data in nearMic, farRender and out assumed to be mono, with 10ms worth of samples
// farRender may be NULL, for Automatic Gain Control without echo cancellation 
int EchoCancellerProcess(EchoCancellerRef opaquePointer, float *nearMic, float *farRender, float *out);

#ifdef __cplusplus
}
#endif
