contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function checkHarvest() payable {
    mem[96] = 0x29d729af90d0e348b3f7aee076fd7f3aeee3142d
    mem[128] = 0x430708c04a4f4660c2e11d048c7cf0b78522b56a
    mem[160] = 0x8f4fcb0096496bec90e88f9f8bb5a050f6dd5749
    mem[192] = 0xc4593903d888d5cfdb30e759a09b283d96a9ee0
    mem[224] = 0xd01fb5bfdc3320dc31914737c6020739c42e7bbb
    mem[256] = 0xd53b145739352c1bcc7079cdda0cf6edfbd8f015
    mem[288] = 0x6d063c347a0f97ca4535398025e6e60cbc2f255
    mem[320] = 0x5eb330bc1b4e7ebc4355ebc330ec5a5d36fb73ca
    mem[352] = 0x822856e9433e7b4c268286bf004b8c8ecf559d64
    mem[384] = 0x6b515128cac164c63ba4fd48229839ba769f71f
    mem[416] = 0x7d5bdba328c659f5d28c6451be790dc67f5a7ca3
    mem[448] = 0x649f6e5fdcf5dfb077b3448a71fb5babe508906
    mem[480] = 0x29d9e421e4e4a7f151c00f7bff808a2b5f62f227
    mem[512] = 0xc0907e0e29f6576e864492d6ec12716dc1d21a87
    mem[544] = 0x7c9520e814d935b0cc8028a9e17eb590f41a0d8a
    mem[576] = 0xe1526210f125c30227dfc398073896ec0a6ea9b9
    mem[608] = 0x5f69e5870f2c25cea61622e932a46adabcfb3981
    mem[640] = 0x16ead2dc01946a7ad21017963f93c72ee102f58a
    mem[672] = 0x344c421f2698c2aa12ce013f085cb6c65b475bbc
    mem[704] = 0x5b9dfe69f95e04017e3a9cf62a3c49b4b442f7a3
    mem[736] = 0x562ae83d17590d9681d5445ecfc0f56517e49f24
    mem[768] = 0xa45dd07dc52cace34185298187e7d399717f2550
    mem[800] = 0x81f2c701db19a255b0bbc557d1d86fbf92da8a78
    mem[832] = 0x17834d9250882ba8cb6a27fffa50d0cd61c0ff2a
    mem[864] = 0xfa6c93288250c67ca620efb096e9d23c8ecc587d
    mem[896] = 0x9eca684321ec265ca7b601871f629e77ad9f1ebb
    mem[928] = 0x6b2cfabf0703d807784d11eee07759559edeff6a
    mem[960] = 0x653b205f0ceb4df38dbfbfeacaacc2003c553883
    mem[992] = 0x3246893c1f8c1bf928121094ea4558c7b93bdc9a
    mem[1024] = 0x709ecd8310a72b069034721d8c5975553dc27feb
    mem[1056] = 0x8c6069624e746513ac1b1d1434aabbeda152f181
    mem[1088] = 0x15d20d0074b3b887a6c4ff1483b8a71de2d4c915
    mem[1124] = 0x187b2d576ba7ec2141c180a96edd0f202492f36b
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args 0x187b2d576ba7ec2141c180a96edd0f202492f36b
    mem[1120] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 1120] = 32
    mem[64] = ceil32(return_data.size) + 2176
    mem[ceil32(return_data.size) + 1152 len 1024] = call.data[calldata.size len 1024]
    idx = 0
    s = ext_call.return_data[0]
    while idx < 32:
        require ext_code.size(mem[(32 * idx) + 108 len 20])
        call mem[(32 * idx) + 108 len 20].harvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = 0x187b2d576ba7ec2141c180a96edd0f202492f36b
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args 0x187b2d576ba7ec2141c180a96edd0f202492f36b
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_24]
        if mem[_24] < s:
            revert with 'NH{q', 17
        if idx >= mem[ceil32(return_data.size) + 1120]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 1152] = mem[_24] - s
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _25
        continue 
    mem[mem[64]] = 32
    _19 = mem[ceil32(return_data.size) + 1120]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 1120]
    mem[mem[64] + 64 len 32 * _19] = mem[ceil32(return_data.size) + 1152 len 32 * _19]
    return 32, mem[mem[64] + 32 len (32 * _19) + 32]
}



}
