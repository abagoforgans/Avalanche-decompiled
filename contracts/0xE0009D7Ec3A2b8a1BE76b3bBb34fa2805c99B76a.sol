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
    mem[480] = 0xcf6d72677da46c608563e9b6b538185e1cdb8b23
    mem[512] = 0x29d9e421e4e4a7f151c00f7bff808a2b5f62f227
    mem[544] = 0xc0907e0e29f6576e864492d6ec12716dc1d21a87
    mem[576] = 0x7c9520e814d935b0cc8028a9e17eb590f41a0d8a
    mem[608] = 0xe1526210f125c30227dfc398073896ec0a6ea9b9
    mem[640] = 0x5f69e5870f2c25cea61622e932a46adabcfb3981
    mem[676] = 0x187b2d576ba7ec2141c180a96edd0f202492f36b
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args 0x187b2d576ba7ec2141c180a96edd0f202492f36b
    mem[672] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 672] = 18
    mem[ceil32(return_data.size) + 704 len 576] = call.data[calldata.size len 576]
    mem[ceil32(return_data.size) + 1280] = 18
    mem[64] = ceil32(return_data.size) + 1888
    mem[ceil32(return_data.size) + 1312 len 576] = call.data[calldata.size len 576]
    idx = 0
    s = ext_call.return_data[0]
    while idx < 18:
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
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_27]
        if mem[_27] < s:
            revert with 'NH{q', 17
        if idx >= mem[ceil32(return_data.size) + 672]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 704] = mem[_27] - s
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
        if idx >= mem[ceil32(return_data.size) + 1280]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 1312] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _29
        continue 
    _17 = mem[64]
    mem[mem[64]] = 64
    _21 = mem[ceil32(return_data.size) + 672]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 672]
    mem[mem[64] + 96 len 32 * _21] = mem[ceil32(return_data.size) + 704 len 32 * _21]
    mem[mem[64] + 32] = (32 * _21) + 96
    _33 = mem[ceil32(return_data.size) + 1280]
    mem[_17 + (32 * _21) + 96] = mem[ceil32(return_data.size) + 1280]
    mem[_17 + (32 * _21) + 128 len 32 * _33] = mem[ceil32(return_data.size) + 1312 len 32 * _33]
    return memory
      from mem[64]
       len _17 + (32 * _21) + (32 * _33) + -mem[64] + 128
}



}
