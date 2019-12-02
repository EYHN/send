const html = require('choo/html');
const modal = require('./modal');

module.exports = function(state, emit) {
  return html`
    <main class="main">
      ${state.modal && modal(state, emit)}
      <div
        class="flex flex-col items-center bg-white m-4 px-6 py-8 border border-grey-30 md:border-none md:px-12 md:py-16 shadow w-full md:h-full dark:bg-grey-90"
      >
        <h1 class="text-center text-3xl font-bold">
          ${state.translate('legalTitle')}
        </h1>
        <p class="mt-2">${state.translate('legalDateStamp')}</p>
        <div class="overflow-y-scroll py-8 px-12">
          <p class="leading-normal">
            <span>
              Miku Send
              服务仅供文件分享使用，我们保留删除违反中华人民共和国法律的文件和举报上传者的权利。
            </span>
          </p>
          <ul class="mt-6 leading-normal">
            <li class="mb-4">
              <b>上传文件</b>:
              我们会收到您上传文件的加密副本，但是我们无法访问您加密文件的内容或名称。
              您可以选择文件保存的时间和下载次数的上限，当文件过期或下载次数达到上限我们会尽快从服务器中删除文件。
            </li>
            <li class="mb-4">
              <b>储存在您设备上的数据</b>:
              以便您可以查看文件状态或删除文件，我们会把已上传文件的基本信息存储在本地设备上。
              其中包括ID，文件名和文件的唯一下载URL。如果您删除上传的文件，或者在文件过期会自动清除此数据。
              但是请注意，文件的唯一下载URL将保留在您的浏览历史记录中（以及与之共享的人），直到手动将其删除为止。
            </li>
            <li class="mb-4">
              <b>第三方服务</b>:
              以便您可以查看文件状态或删除文件，我们会把已上传文件的基本信息存储在本地设备上。
              其中包括ID，文件名和文件的唯一下载URL。如果您删除上传的文件，或者在文件过期会自动清除此数据。
              但是请注意，文件的唯一下载URL将保留在您的浏览历史记录中（以及与之共享的人），直到手动将其删除为止。
            </li>
          </ul>
        </div>
      </div>
    </main>
  `;
};
