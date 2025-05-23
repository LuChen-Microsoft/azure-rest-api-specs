import "@azure-tools/typespec-client-generator-core";

import "./client/custom_visibility.tsp";
import "./main.tsp";

using Azure.ClientGenerator.Core;

#suppress "@azure-tools/typespec-azure-core/casing-style" "OpenAI is a case-sensitive name"
@TypeSpec.Versioning.useDependency(
  Azure.OpenAI.ServiceApiVersions.v2024_08_01_Preview
)
namespace Client;

@@clientNamespace(Client, "com.azure.ai.openai", "java");
@@clientNamespace(Azure.OpenAI, "com.azure.ai.openai", "java");
@@clientNamespace(Azure.OpenAI.FunctionCallPreset,
  "com.azure.ai.openai.implementation",
  "java"
);
@@clientNamespace(Azure.OpenAI.FileListResponse,
  "com.azure.ai.openai.implementation",
  "java"
);
@@clientNamespace(Azure.OpenAI.OpenAIPageableListOf,
  "com.azure.ai.openai.implementation",
  "java"
);

#suppress "@azure-tools/typespec-azure-core/casing-style" "OpenAI is a case-sensitive name"
@client({
  name: "OpenAIClient",
  service: Azure.OpenAI,
})
interface OpenAIClient {
  #suppress "@azure-tools/typespec-azure-core/byos" "representation of existing multipart/form-data operation"
  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "non-model response value needed"
  getAudioTranscriptionAsPlainText is Azure.OpenAI.getAudioTranscriptionAsPlainText;

  #suppress "@azure-tools/typespec-azure-core/byos" "representation of existing multipart/form-data operation"
  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "non-model response value needed"
  getAudioTranscriptionAsResponseObject is Azure.OpenAI.getAudioTranscriptionAsResponseObject;

  #suppress "@azure-tools/typespec-azure-core/byos" "representation of existing multipart/form-data operation"
  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "non-model response value needed"
  getAudioTranslationAsPlainText is Azure.OpenAI.getAudioTranslationAsPlainText;

  #suppress "@azure-tools/typespec-azure-core/byos" "representation of existing multipart/form-data operation"
  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "non-model response value needed"
  getAudioTranslationAsResponseObject is Azure.OpenAI.getAudioTranslationAsResponseObject;

  getCompletions is Azure.OpenAI.getCompletions;
  getChatCompletions is Azure.OpenAI.getChatCompletions;

  getImageGenerations is Azure.OpenAI.getImageGenerations;

  generateSpeechFromText is Azure.OpenAI.generateSpeechFromText;

  getEmbeddings is Azure.OpenAI.getEmbeddings;

  #suppress "@azure-tools/typespec-azure-core/use-standard-names" "Existing name"
  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  listFiles is Azure.OpenAI.listFiles;

  #suppress "@azure-tools/typespec-azure-core/byos" "representation of existing multipart/form-data operation"
  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  uploadFile is Azure.OpenAI.uploadFile;

  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  deleteFile is Azure.OpenAI.deleteFile;

  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  getFile is Azure.OpenAI.getFile;

  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  getFileContent is Azure.OpenAI.getFileContent;

  #suppress "@azure-tools/typespec-azure-core/use-standard-names" "Existing name"
  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  listBatches is Azure.OpenAI.listBatches;

  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  createBatch is Azure.OpenAI.createBatch;

  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  getBatch is Azure.OpenAI.getBatch;

  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  cancelBatch is Azure.OpenAI.cancelBatch;

  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  createUpload is Azure.OpenAI.createUpload;

  #suppress "@azure-tools/typespec-azure-core/byos" "representation of existing multipart/form-data operation"
  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  addUploadPart is Azure.OpenAI.addUploadPart;

  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  completeUpload is Azure.OpenAI.completeUpload;

  #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "not yet an Azure operation"
  cancelUpload is Azure.OpenAI.cancelUpload;
}

@@clientName(Azure.OpenAI.GenerateSpeechFromTextBody.body,
  "speechGenerationOptions",
  "java"
);
@@clientName(Azure.OpenAI.GetAudioTranscriptionBody.body,
  "audioTranscriptionOptions",
  "java"
);
@@clientName(Azure.OpenAI.GetAudioTranslationBody.body,
  "audioTranslationOptions",
  "java"
);
@@clientName(Azure.OpenAI.GetChatCompletionsBody.body,
  "chatCompletionsOptions",
  "java"
);
@@clientName(Azure.OpenAI.GetCompletionsBody.body,
  "completionsOptions",
  "java"
);
@@clientName(Azure.OpenAI.GetEmbeddingsBody.body, "embeddingsOptions", "java");
@@clientName(Azure.OpenAI.GetImageGenerationsBody.body,
  "imageGenerationOptions",
  "java"
);

@@clientName(Azure.OpenAI.uploadFile::parameters.file,
  "uploadFileRequest",
  "java"
);
