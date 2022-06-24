contract main {




// =====================  Runtime code  =====================


#
#  - sub_5059f2c1(?)
#  - sub_68a99210(?)
#  - sub_b0789a2f(?)
#  - sub_b6725931(?)
#
array of struct stor0;
mapping of uint8 stor1;
array of struct stor2;
array of struct stor4;
array of struct sub_58ba1bb8;
mapping of struct sub_60c8b28d;
array of struct stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of address stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of address stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of struct stor111414077815863400510004064629973595961579173665589224203503662149373724986691;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986693;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986694;
array of struct stor111414077815863400510004064629973595961579173665589224203503662149373724986695;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986696;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986697;

function sub_28651c7d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(sub_3894bf5a[address(arg1)].field_0))
}

function isManager(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(sub_3894bf5a[address(arg1)][3][address(arg2)].field_0))
}

function sub_2f2b31db(?) payable {
    return stor0.length
}

function sub_3894bf5a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_3894bf5a[address(arg1)].field_1280)
}

function sub_41c311c0(?) payable {
    return sub_58ba1bb8.length
}

function isAgent(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(sub_e12d9f74[address(arg1)][1][address(arg2)].field_0))
}

function sub_53d90202(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(sub_3894bf5a[arg1].field_0))
}

function sub_58ba1bb8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_58ba1bb8.length
    if uint8(sub_58ba1bb8[arg1].field_264) >= 2:
        revert with 0, 33
    if uint8(sub_58ba1bb8[arg1].field_272) >= 4:
        revert with 0, 33
    if uint8(sub_58ba1bb8[arg1].field_2048) >= 3:
        revert with 0, 33
    return uint256(sub_58ba1bb8[arg1].field_0), 
           bool(uint8(sub_58ba1bb8[arg1].field_256)),
           uint8(sub_58ba1bb8[arg1].field_256),
           uint8(sub_58ba1bb8[arg1].field_256),
           address(sub_58ba1bb8[arg1].field_280),
           address(sub_58ba1bb8[arg1].field_512),
           address(sub_58ba1bb8[arg1].field_768),
           address(sub_58ba1bb8[arg1].field_1024),
           uint256(sub_58ba1bb8[arg1].field_1280),
           uint256(sub_58ba1bb8[arg1].field_1536),
           uint256(sub_58ba1bb8[arg1].field_1792),
           uint8(sub_58ba1bb8[arg1].field_2048),
           uint256(sub_58ba1bb8[arg1].field_2304)
}

function sub_60c8b28d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return bool(uint8(sub_60c8b28d[arg1][arg2].field_0)), bool(uint8(sub_60c8b28d[arg1][arg2].field_8))
}

function sub_72ea5b1e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(sub_e12d9f74[arg1].field_0))
}

function sub_7452d2b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_3894bf5a[address(arg1)].field_1536)
}

function sub_83f2d371(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return bool(uint8(sub_60c8b28d[arg1][address(arg2)].field_8))
}

function isAdmin(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(sub_3894bf5a[address(arg1)][2][address(arg2)].field_0))
}

function isWhiteListed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(sub_e12d9f74[address(arg1)][3][address(arg2)].field_0))
}

function sub_a97c7b63(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(sub_e12d9f74[address(arg1)].field_0))
}

function sub_e12d9f74(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_e12d9f74[address(arg1)].field_512)
}

function isCitizen(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[address(arg1)]))
}

function sub_f536128b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(uint8(sub_3894bf5a[address(arg1)][1][address(arg2)].field_0))
}

function _fallback() payable {
    revert
}

function sub_ff5560c6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(this.address)
    staticcall this.address.0x28651c7d with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    uint8(sub_e12d9f74[address(arg1)].field_0) = 1
    stor4.length++
    address(stor4[stor4.length].field_0) = address(arg1)
}

function sub_beca8009(?) payable {
    if stor2.length:
        mem[128] = address(stor2.field_0)
        if (32 * stor2.length) + 32 > 64:
            mem[160] = address(stor2.field_256)
            idx = 160
            s = 1
            while (32 * stor2.length) + 96 > idx:
                mem[idx + 32] = address(stor2[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = (32 * stor2.length) + 192
    t = 128
    while idx < stor2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor2.length) + 128
       len (96 * stor2.length) + 64
}

function sub_eee8c7db(?) payable {
    if stor0.length:
        mem[128] = address(stor0.field_0)
        if (32 * stor0.length) + 32 > 64:
            mem[160] = address(stor0.field_256)
            idx = 160
            s = 1
            while (32 * stor0.length) + 96 > idx:
                mem[idx + 32] = address(stor0[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    idx = 0
    s = (32 * stor0.length) + 192
    t = 128
    while idx < stor0.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor0.length) + 128
       len (96 * stor0.length) + 64
}

function sub_059d5d72(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(this.address)
    staticcall this.address.0xa97c7b63 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    uint8(sub_e12d9f74[address(msg.sender)][3][address(arg1)].field_0) = 1
    uint256(sub_e12d9f74[address(msg.sender)].field_1024)++
    address(stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_e12d9f74', 5))) + uint256(sub_e12d9f74[address(msg.sender)].field_1024)].field_0) = address(arg1)
}

function addManager(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(this.address)
    staticcall this.address.0x91006745 with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    uint8(sub_3894bf5a[address(arg1)][3][address(arg2)].field_0) = 1
    uint256(sub_3894bf5a[address(arg1)].field_1536)++
    address(stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3))) + uint256(sub_3894bf5a[address(arg1)].field_1536)].field_0) = arg2
}

function sub_8549199c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(this.address)
    staticcall this.address.0x91006745 with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    uint8(sub_e12d9f74[address(arg2)][1][address(arg3)].field_0) = 1
    uint256(sub_e12d9f74[address(arg2)].field_512)++
    address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = address(arg3)
}

function getCities() payable {
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        idx = 0
        s = (32 * stor4.length) + 192
        t = 128
        while idx < stor4.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = address(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor4.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function sub_1c2e3d82(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(this.address)
    staticcall this.address.0xf3caad03 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    require ext_code.size(this.address)
    staticcall this.address.0xf536128b with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    uint8(sub_3894bf5a[address(arg1)][2][address(arg2)].field_0) = 1
    uint256(sub_3894bf5a[address(arg1)].field_1280)++
    address(stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3))) + uint256(sub_3894bf5a[address(arg1)].field_1280)].field_0) = address(arg2)
}

function sub_c2a8702d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint256(sub_e12d9f74[address(arg1)].field_512):
        mem[128] = address(sub_e12d9f74[address(arg1)][2].field_0)
        if (32 * uint256(sub_e12d9f74[address(arg1)].field_512)) + 32 > 64:
            mem[160] = address(sub_e12d9f74[address(arg1)][2].field_256)
            idx = 160
            s = 1
            while (32 * uint256(sub_e12d9f74[address(arg1)].field_512)) + 96 > idx:
                mem[idx + 32] = address(sub_e12d9f74[address(arg1)][s + 2].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(sub_e12d9f74[address(arg1)].field_512)) + 128] = 32
    mem[(32 * uint256(sub_e12d9f74[address(arg1)].field_512)) + 160] = uint256(sub_e12d9f74[address(arg1)].field_512)
    idx = 0
    s = (32 * uint256(sub_e12d9f74[address(arg1)].field_512)) + 192
    t = 128
    while idx < uint256(sub_e12d9f74[address(arg1)].field_512):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * uint256(sub_e12d9f74[address(arg1)].field_512)) + 128
       len (96 * uint256(sub_e12d9f74[address(arg1)].field_512)) + 64
}

function sub_d4138332(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint256(sub_3894bf5a[address(arg1)].field_1024):
        mem[128] = address(sub_3894bf5a[address(arg1)][4].field_0)
        if (32 * uint256(sub_3894bf5a[address(arg1)].field_1024)) + 32 > 64:
            mem[160] = address(sub_3894bf5a[address(arg1)][4].field_256)
            idx = 160
            s = 1
            while (32 * uint256(sub_3894bf5a[address(arg1)].field_1024)) + 96 > idx:
                mem[idx + 32] = address(sub_3894bf5a[address(arg1)][s + 4].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1024)) + 128] = 32
    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1024)) + 160] = uint256(sub_3894bf5a[address(arg1)].field_1024)
    idx = 0
    s = (32 * uint256(sub_3894bf5a[address(arg1)].field_1024)) + 192
    t = 128
    while idx < uint256(sub_3894bf5a[address(arg1)].field_1024):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * uint256(sub_3894bf5a[address(arg1)].field_1024)) + 128
       len (96 * uint256(sub_3894bf5a[address(arg1)].field_1024)) + 64
}

function sub_e79750df(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint256(sub_3894bf5a[address(arg1)].field_1280):
        mem[128] = address(sub_3894bf5a[address(arg1)][5].field_0)
        if (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 32 > 64:
            mem[160] = address(sub_3894bf5a[address(arg1)][5].field_256)
            idx = 160
            s = 1
            while (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 96 > idx:
                mem[idx + 32] = address(sub_3894bf5a[address(arg1)][s + 5].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 128] = 32
    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 160] = uint256(sub_3894bf5a[address(arg1)].field_1280)
    idx = 0
    s = (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 192
    t = 128
    while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 128
       len (96 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 64
}

function getManagers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint256(sub_3894bf5a[address(arg1)].field_1536):
        mem[128] = address(sub_3894bf5a[address(arg1)][6].field_0)
        if (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 32 > 64:
            mem[160] = address(sub_3894bf5a[address(arg1)][6].field_256)
            idx = 160
            s = 1
            while (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 96 > idx:
                mem[idx + 32] = address(sub_3894bf5a[address(arg1)][s + 6].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 128] = 32
    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 160] = uint256(sub_3894bf5a[address(arg1)].field_1536)
    idx = 0
    s = (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 192
    t = 128
    while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 128
       len (96 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 64
}

function sub_32e82875(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint256(sub_58ba1bb8[arg1].field_2560):
        mem[128] = address(stor[sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 6) + 10)].field_0)
        if (32 * uint256(sub_58ba1bb8[arg1].field_2560)) + 32 > 64:
            mem[160] = address(stor[sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 6) + 10)].field_256)
            idx = 160
            s = 1
            while (32 * uint256(sub_58ba1bb8[arg1].field_2560)) + 96 > idx:
                mem[idx + 32] = address(stor[s + sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 6) + 10)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(sub_58ba1bb8[arg1].field_2560)) + 128] = 32
    mem[(32 * uint256(sub_58ba1bb8[arg1].field_2560)) + 160] = uint256(sub_58ba1bb8[arg1].field_2560)
    idx = 0
    s = (32 * uint256(sub_58ba1bb8[arg1].field_2560)) + 192
    t = 128
    while idx < uint256(sub_58ba1bb8[arg1].field_2560):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * uint256(sub_58ba1bb8[arg1].field_2560)) + 128
       len (96 * uint256(sub_58ba1bb8[arg1].field_2560)) + 64
}

function getWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * uint256(sub_e12d9f74[address(arg1)].field_1024)) + 128
    mem[96] = uint256(sub_e12d9f74[address(arg1)].field_1024)
    if not uint256(sub_e12d9f74[address(arg1)].field_1024):
        mem[(32 * uint256(sub_e12d9f74[address(arg1)].field_1024)) + 128] = 32
        mem[(32 * uint256(sub_e12d9f74[address(arg1)].field_1024)) + 160] = uint256(sub_e12d9f74[address(arg1)].field_1024)
        idx = 0
        s = (32 * uint256(sub_e12d9f74[address(arg1)].field_1024)) + 192
        t = 128
        while idx < uint256(sub_e12d9f74[address(arg1)].field_1024):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * uint256(sub_e12d9f74[address(arg1)].field_1024)) + 128
           len (96 * uint256(sub_e12d9f74[address(arg1)].field_1024)) + 64
    mem[128] = address(sub_e12d9f74[address(arg1)][4].field_0)
    idx = 128
    s = 0
    while (32 * uint256(sub_e12d9f74[address(arg1)].field_1024)) + 96 > idx:
        mem[idx + 32] = address(sub_e12d9f74[address(arg1)][s + 4].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(sub_e12d9f74[address(arg1)].field_1024)) + 128] = 32
    mem[(32 * uint256(sub_e12d9f74[address(arg1)].field_1024)) + 160] = uint256(sub_e12d9f74[address(arg1)].field_1024)
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < uint256(sub_e12d9f74[address(arg1)].field_1024):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * uint256(sub_e12d9f74[address(arg1)].field_1024)) + -mem[64] + 192
}

function sub_6315ab3e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(this.address)
    staticcall this.address.0xf3caad03 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if block.timestamp > !arg2:
        revert with 0, 17
    if stor0.length > test266151307():
        revert with 0, 65
    if stor0.length:
        mem[ceil32(return_data.size) + 640 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
    sub_58ba1bb8.length++
    uint256(sub_58ba1bb8[sub_58ba1bb8.length].field_0) = sub_58ba1bb8.length
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_8) = 1
    Mask(240, 0, storF652[stor6.length].field_16) = 0
    uint8(storF652[stor6.length].field_16) = 2
    address(storF652[stor6.length].field_24) = address(arg1)
    storF652[stor6.length] = msg.sender
    storF652[stor6.length] = this.address
    address(storF652[stor6.length].field_0) = 0
    storF652[stor6.length].field_256 % 1 = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    uint8(storF652[stor6.length].field_0) = 0
    storF652[stor6.length].field_256 % 1 = 0
    storF652[stor6.length] = block.timestamp + arg2
    storF652[stor6.length] = stor0.length
    if not stor0.length:
        idx = 0
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 640
        while ceil32(return_data.size) + (32 * stor0.length) + 640 > idx:
            address(stor[s + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor0.length) + 31) >> 5
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    mem[ceil32(return_data.size) + (32 * stor0.length) + 640] = 32
    mem[ceil32(return_data.size) + (32 * stor0.length) + 672] = sub_58ba1bb8.length
    mem[ceil32(return_data.size) + (32 * stor0.length) + 704] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 736] = 1
    mem[ceil32(return_data.size) + (32 * stor0.length) + 768] = 2
    mem[ceil32(return_data.size) + (32 * stor0.length) + 800] = address(arg1)
    mem[ceil32(return_data.size) + (32 * stor0.length) + 832] = msg.sender
    mem[ceil32(return_data.size) + (32 * stor0.length) + 864] = this.address
    mem[ceil32(return_data.size) + (32 * stor0.length) + 896] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 928] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 960] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 992] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1024] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1056] = block.timestamp + arg2
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1088] = 448
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1120] = stor0.length
    idx = 0
    s = ceil32(return_data.size) + 640
    t = ceil32(return_data.size) + (32 * stor0.length) + 1152
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x7e2d56f6: mem[ceil32(return_data.size) + (32 * stor0.length) + 640 len (96 * stor0.length) + 512]
    return sub_58ba1bb8.length
}

function sub_fb17f8bd(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(this.address)
    staticcall this.address.0xf3caad03 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if block.timestamp > !arg3:
        revert with 0, 17
    if stor0.length > test266151307():
        revert with 0, 65
    if stor0.length:
        mem[ceil32(return_data.size) + 640 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
    sub_58ba1bb8.length++
    uint256(sub_58ba1bb8[sub_58ba1bb8.length].field_0) = sub_58ba1bb8.length
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_8) = 0
    Mask(240, 0, storF652[stor6.length].field_16) = 0
    storF652[stor6.length].field_256 % 1 = 0
    uint8(storF652[stor6.length].field_16) = 2
    address(storF652[stor6.length].field_24) = address(arg1)
    storF652[stor6.length] = msg.sender
    storF652[stor6.length] = this.address
    address(storF652[stor6.length].field_0) = address(arg2)
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    uint8(storF652[stor6.length].field_0) = 0
    storF652[stor6.length].field_256 % 1 = 0
    storF652[stor6.length] = block.timestamp + arg3
    storF652[stor6.length] = stor0.length
    if not stor0.length:
        idx = 0
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 640
        while ceil32(return_data.size) + (32 * stor0.length) + 640 > idx:
            address(stor[s + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor0.length) + 31) >> 5
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    mem[ceil32(return_data.size) + (32 * stor0.length) + 640] = 32
    mem[ceil32(return_data.size) + (32 * stor0.length) + 672] = sub_58ba1bb8.length
    mem[ceil32(return_data.size) + (32 * stor0.length) + 704] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 736] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 768] = 2
    mem[ceil32(return_data.size) + (32 * stor0.length) + 800] = address(arg1)
    mem[ceil32(return_data.size) + (32 * stor0.length) + 832] = msg.sender
    mem[ceil32(return_data.size) + (32 * stor0.length) + 864] = this.address
    mem[ceil32(return_data.size) + (32 * stor0.length) + 896] = address(arg2)
    mem[ceil32(return_data.size) + (32 * stor0.length) + 928] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 960] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 992] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1024] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1056] = block.timestamp + arg3
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1088] = 448
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1120] = stor0.length
    idx = 0
    s = ceil32(return_data.size) + 640
    t = ceil32(return_data.size) + (32 * stor0.length) + 1152
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x7e2d56f6: mem[ceil32(return_data.size) + (32 * stor0.length) + 640 len (96 * stor0.length) + 512]
    return sub_58ba1bb8.length
}

function sub_0754a5be(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(this.address)
    staticcall this.address.0x91006745 with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if block.timestamp > !arg4:
        revert with 0, 17
    if stor0.length > test266151307():
        revert with 0, 65
    if stor0.length:
        mem[ceil32(return_data.size) + 640 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
    sub_58ba1bb8.length++
    uint256(sub_58ba1bb8[sub_58ba1bb8.length].field_0) = sub_58ba1bb8.length
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_8) = 1
    Mask(240, 0, storF652[stor6.length].field_16) = 0
    uint8(storF652[stor6.length].field_16) = 3
    address(storF652[stor6.length].field_24) = address(arg3)
    storF652[stor6.length] = msg.sender
    storF652[stor6.length] = address(arg2)
    address(storF652[stor6.length].field_0) = 0
    storF652[stor6.length].field_256 % 1 = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    uint8(storF652[stor6.length].field_0) = 0
    storF652[stor6.length].field_256 % 1 = 0
    storF652[stor6.length] = block.timestamp + arg4
    storF652[stor6.length] = stor0.length
    if not stor0.length:
        idx = 0
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 640
        while ceil32(return_data.size) + (32 * stor0.length) + 640 > idx:
            address(stor[s + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor0.length) + 31) >> 5
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    mem[ceil32(return_data.size) + (32 * stor0.length) + 640] = 32
    mem[ceil32(return_data.size) + (32 * stor0.length) + 672] = sub_58ba1bb8.length
    mem[ceil32(return_data.size) + (32 * stor0.length) + 704] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 736] = 1
    mem[ceil32(return_data.size) + (32 * stor0.length) + 768] = 3
    mem[ceil32(return_data.size) + (32 * stor0.length) + 800] = address(arg3)
    mem[ceil32(return_data.size) + (32 * stor0.length) + 832] = msg.sender
    mem[ceil32(return_data.size) + (32 * stor0.length) + 864] = address(arg2)
    mem[ceil32(return_data.size) + (32 * stor0.length) + 896] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 928] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 960] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 992] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1024] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1056] = block.timestamp + arg4
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1088] = 448
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1120] = stor0.length
    idx = 0
    s = ceil32(return_data.size) + 640
    t = ceil32(return_data.size) + (32 * stor0.length) + 1152
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x7e2d56f6: mem[ceil32(return_data.size) + (32 * stor0.length) + 640 len (96 * stor0.length) + 512]
    return sub_58ba1bb8.length
}

function sub_f24b6138(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(this.address)
    staticcall this.address.0xf3caad03 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if block.timestamp > !arg2:
        revert with 0, 17
    if stor0.length > test266151307():
        revert with 0, 65
    if stor0.length:
        mem[ceil32(return_data.size) + 640 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
    sub_58ba1bb8.length++
    uint256(sub_58ba1bb8[sub_58ba1bb8.length].field_0) = sub_58ba1bb8.length
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_8) = 0
    Mask(240, 0, storF652[stor6.length].field_16) = 0
    storF652[stor6.length].field_256 % 1 = 0
    uint8(storF652[stor6.length].field_16) = 0
    storF652[stor6.length].field_256 % 1 = 0
    address(storF652[stor6.length].field_24) = address(arg1)
    storF652[stor6.length] = msg.sender
    storF652[stor6.length] = this.address
    address(storF652[stor6.length].field_0) = 0
    storF652[stor6.length].field_256 % 1 = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    uint8(storF652[stor6.length].field_0) = 0
    storF652[stor6.length].field_256 % 1 = 0
    storF652[stor6.length] = block.timestamp + arg2
    storF652[stor6.length] = stor0.length
    if not stor0.length:
        idx = 0
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 640
        while ceil32(return_data.size) + (32 * stor0.length) + 640 > idx:
            address(stor[s + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor0.length) + 31) >> 5
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    mem[ceil32(return_data.size) + (32 * stor0.length) + 640] = 32
    mem[ceil32(return_data.size) + (32 * stor0.length) + 672] = sub_58ba1bb8.length
    mem[ceil32(return_data.size) + (32 * stor0.length) + 704] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 736] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 768] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 800] = address(arg1)
    mem[ceil32(return_data.size) + (32 * stor0.length) + 832] = msg.sender
    mem[ceil32(return_data.size) + (32 * stor0.length) + 864] = this.address
    mem[ceil32(return_data.size) + (32 * stor0.length) + 896] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 928] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 960] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 992] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1024] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1056] = block.timestamp + arg2
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1088] = 448
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1120] = stor0.length
    idx = 0
    s = ceil32(return_data.size) + 640
    t = ceil32(return_data.size) + (32 * stor0.length) + 1152
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x7e2d56f6: mem[ceil32(return_data.size) + (32 * stor0.length) + 640 len (96 * stor0.length) + 512]
    return sub_58ba1bb8.length
}

function sub_32fdcb90(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(this.address)
    staticcall this.address.0xf3caad03 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if 3 >= stor0.length:
        revert with 0, 'OWN = 3'
    if block.timestamp > !arg2:
        revert with 0, 17
    if stor0.length > test266151307():
        revert with 0, 65
    if stor0.length:
        mem[ceil32(return_data.size) + 640 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
    sub_58ba1bb8.length++
    uint256(sub_58ba1bb8[sub_58ba1bb8.length].field_0) = sub_58ba1bb8.length
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_8) = 1
    Mask(240, 0, storF652[stor6.length].field_16) = 0
    uint8(storF652[stor6.length].field_16) = 0
    storF652[stor6.length].field_256 % 1 = 0
    address(storF652[stor6.length].field_24) = address(arg1)
    storF652[stor6.length] = msg.sender
    storF652[stor6.length] = this.address
    address(storF652[stor6.length].field_0) = 0
    storF652[stor6.length].field_256 % 1 = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    uint8(storF652[stor6.length].field_0) = 0
    storF652[stor6.length].field_256 % 1 = 0
    storF652[stor6.length] = block.timestamp + arg2
    storF652[stor6.length] = stor0.length
    if not stor0.length:
        idx = 0
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 640
        while ceil32(return_data.size) + (32 * stor0.length) + 640 > idx:
            address(stor[s + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor0.length) + 31) >> 5
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    mem[ceil32(return_data.size) + (32 * stor0.length) + 640] = 32
    mem[ceil32(return_data.size) + (32 * stor0.length) + 672] = sub_58ba1bb8.length
    mem[ceil32(return_data.size) + (32 * stor0.length) + 704] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 736] = 1
    mem[ceil32(return_data.size) + (32 * stor0.length) + 768] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 800] = address(arg1)
    mem[ceil32(return_data.size) + (32 * stor0.length) + 832] = msg.sender
    mem[ceil32(return_data.size) + (32 * stor0.length) + 864] = this.address
    mem[ceil32(return_data.size) + (32 * stor0.length) + 896] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 928] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 960] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 992] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1024] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1056] = block.timestamp + arg2
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1088] = 448
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1120] = stor0.length
    idx = 0
    s = ceil32(return_data.size) + 640
    t = ceil32(return_data.size) + (32 * stor0.length) + 1152
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x7e2d56f6: mem[ceil32(return_data.size) + (32 * stor0.length) + 640 len (96 * stor0.length) + 512]
    return sub_58ba1bb8.length
}

function sub_51b68d0c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(this.address)
    staticcall this.address.0x91006745 with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if block.timestamp > !arg4:
        revert with 0, 17
    if stor0.length > test266151307():
        revert with 0, 65
    if stor0.length:
        mem[ceil32(return_data.size) + 640 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
    sub_58ba1bb8.length++
    uint256(sub_58ba1bb8[sub_58ba1bb8.length].field_0) = sub_58ba1bb8.length
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_0) = 0
    uint8(storF652[stor6.length].field_8) = 0
    Mask(240, 0, storF652[stor6.length].field_16) = 0
    storF652[stor6.length].field_256 % 1 = 0
    uint8(storF652[stor6.length].field_16) = 3
    address(storF652[stor6.length].field_24) = address(arg3)
    storF652[stor6.length] = msg.sender
    storF652[stor6.length] = address(arg2)
    address(storF652[stor6.length].field_0) = 0
    storF652[stor6.length].field_256 % 1 = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    uint8(storF652[stor6.length].field_0) = 0
    storF652[stor6.length].field_256 % 1 = 0
    storF652[stor6.length] = block.timestamp + arg4
    storF652[stor6.length] = stor0.length
    if not stor0.length:
        idx = 0
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 640
        while ceil32(return_data.size) + (32 * stor0.length) + 640 > idx:
            address(stor[s + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor0.length) + 31) >> 5
        while storF652[stor6.length] > idx:
            uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
            idx = idx + 1
            continue 
    mem[ceil32(return_data.size) + (32 * stor0.length) + 640] = 32
    mem[ceil32(return_data.size) + (32 * stor0.length) + 672] = sub_58ba1bb8.length
    mem[ceil32(return_data.size) + (32 * stor0.length) + 704] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 736] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 768] = 3
    mem[ceil32(return_data.size) + (32 * stor0.length) + 800] = address(arg3)
    mem[ceil32(return_data.size) + (32 * stor0.length) + 832] = msg.sender
    mem[ceil32(return_data.size) + (32 * stor0.length) + 864] = address(arg2)
    mem[ceil32(return_data.size) + (32 * stor0.length) + 896] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 928] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 960] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 992] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1024] = 0
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1056] = block.timestamp + arg4
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1088] = 448
    mem[ceil32(return_data.size) + (32 * stor0.length) + 1120] = stor0.length
    idx = 0
    s = ceil32(return_data.size) + 640
    t = ceil32(return_data.size) + (32 * stor0.length) + 1152
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x7e2d56f6: mem[ceil32(return_data.size) + (32 * stor0.length) + 640 len (96 * stor0.length) + 512]
    return sub_58ba1bb8.length
}

function sub_0a630eaf(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(this.address)
    staticcall this.address.0x91006745 with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if block.timestamp > !arg3:
            revert with 0, 17
        if stor0.length > test266151307():
            revert with 0, 65
        if stor0.length:
            mem[ceil32(return_data.size) + 640 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        sub_58ba1bb8.length++
        uint256(sub_58ba1bb8[sub_58ba1bb8.length].field_0) = sub_58ba1bb8.length
        uint8(storF652[stor6.length].field_0) = 0
        uint8(storF652[stor6.length].field_0) = 0
        uint8(storF652[stor6.length].field_8) = 1
        Mask(240, 0, storF652[stor6.length].field_16) = 0
        uint8(storF652[stor6.length].field_16) = 1
        address(storF652[stor6.length].field_24) = address(arg2)
        storF652[stor6.length] = msg.sender
        storF652[stor6.length] = address(arg1)
        address(storF652[stor6.length].field_0) = 0
        storF652[stor6.length].field_256 % 1 = 0
        storF652[stor6.length] = 0
        storF652[stor6.length] = 0
        storF652[stor6.length] = 0
        uint8(storF652[stor6.length].field_0) = 0
        storF652[stor6.length].field_256 % 1 = 0
        storF652[stor6.length] = block.timestamp + arg3
        storF652[stor6.length] = stor0.length
        if not stor0.length:
            idx = 0
            while storF652[stor6.length] > idx:
                uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = ceil32(return_data.size) + 640
            while ceil32(return_data.size) + (32 * stor0.length) + 640 > idx:
                address(stor[s + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * stor0.length) + 31) >> 5
            while storF652[stor6.length] > idx:
                uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
                idx = idx + 1
                continue 
        mem[ceil32(return_data.size) + (32 * stor0.length) + 640] = 32
        mem[ceil32(return_data.size) + (32 * stor0.length) + 672] = sub_58ba1bb8.length
        mem[ceil32(return_data.size) + (32 * stor0.length) + 704] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 736] = 1
        mem[ceil32(return_data.size) + (32 * stor0.length) + 768] = 1
        mem[ceil32(return_data.size) + (32 * stor0.length) + 800] = address(arg2)
        mem[ceil32(return_data.size) + (32 * stor0.length) + 832] = msg.sender
        mem[ceil32(return_data.size) + (32 * stor0.length) + 864] = address(arg1)
        mem[ceil32(return_data.size) + (32 * stor0.length) + 896] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 928] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 960] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 992] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 1024] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 1056] = block.timestamp + arg3
        mem[ceil32(return_data.size) + (32 * stor0.length) + 1088] = 448
        mem[ceil32(return_data.size) + (32 * stor0.length) + 1120] = stor0.length
        idx = 0
        s = ceil32(return_data.size) + 640
        t = ceil32(return_data.size) + (32 * stor0.length) + 1152
        while idx < stor0.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x7e2d56f6: mem[ceil32(return_data.size) + (32 * stor0.length) + 640 len (96 * stor0.length) + 512]
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(this.address)
        staticcall this.address.0xf3caad03 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if block.timestamp > !arg3:
            revert with 0, 17
        if stor0.length > test266151307():
            revert with 0, 65
        if stor0.length:
            mem[(2 * ceil32(return_data.size)) + 640 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        sub_58ba1bb8.length++
        uint256(sub_58ba1bb8[sub_58ba1bb8.length].field_0) = sub_58ba1bb8.length
        uint8(storF652[stor6.length].field_0) = 0
        uint8(storF652[stor6.length].field_0) = 0
        uint8(storF652[stor6.length].field_8) = 1
        Mask(240, 0, storF652[stor6.length].field_16) = 0
        uint8(storF652[stor6.length].field_16) = 1
        address(storF652[stor6.length].field_24) = address(arg2)
        storF652[stor6.length] = msg.sender
        storF652[stor6.length] = address(arg1)
        address(storF652[stor6.length].field_0) = 0
        storF652[stor6.length].field_256 % 1 = 0
        storF652[stor6.length] = 0
        storF652[stor6.length] = 0
        storF652[stor6.length] = 0
        uint8(storF652[stor6.length].field_0) = 0
        storF652[stor6.length].field_256 % 1 = 0
        storF652[stor6.length] = block.timestamp + arg3
        storF652[stor6.length] = stor0.length
        if not stor0.length:
            idx = 0
            while storF652[stor6.length] > idx:
                uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (2 * ceil32(return_data.size)) + 640
            while (2 * ceil32(return_data.size)) + (32 * stor0.length) + 640 > idx:
                address(stor[s + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * stor0.length) + 31) >> 5
            while storF652[stor6.length] > idx:
                uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
                idx = idx + 1
                continue 
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 640] = 32
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 672] = sub_58ba1bb8.length
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 704] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 736] = 1
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 768] = 1
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 800] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 832] = msg.sender
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 864] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 896] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 928] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 960] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 992] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 1024] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 1056] = block.timestamp + arg3
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 1088] = 448
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 1120] = stor0.length
        idx = 0
        s = (2 * ceil32(return_data.size)) + 640
        t = (2 * ceil32(return_data.size)) + (32 * stor0.length) + 1152
        while idx < stor0.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x7e2d56f6: mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 640 len (96 * stor0.length) + 512]
    return sub_58ba1bb8.length
}

function sub_08074942(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(this.address)
    staticcall this.address.0x91006745 with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if block.timestamp > !arg3:
            revert with 0, 17
        if stor0.length > test266151307():
            revert with 0, 65
        if stor0.length:
            mem[ceil32(return_data.size) + 640 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        sub_58ba1bb8.length++
        uint256(sub_58ba1bb8[sub_58ba1bb8.length].field_0) = sub_58ba1bb8.length
        uint8(storF652[stor6.length].field_0) = 0
        uint8(storF652[stor6.length].field_0) = 0
        uint8(storF652[stor6.length].field_8) = 0
        Mask(240, 0, storF652[stor6.length].field_16) = 0
        storF652[stor6.length].field_256 % 1 = 0
        uint8(storF652[stor6.length].field_16) = 1
        address(storF652[stor6.length].field_24) = address(arg2)
        storF652[stor6.length] = msg.sender
        storF652[stor6.length] = address(arg1)
        address(storF652[stor6.length].field_0) = 0
        storF652[stor6.length].field_256 % 1 = 0
        storF652[stor6.length] = 0
        storF652[stor6.length] = 0
        storF652[stor6.length] = 0
        uint8(storF652[stor6.length].field_0) = 0
        storF652[stor6.length].field_256 % 1 = 0
        storF652[stor6.length] = block.timestamp + arg3
        storF652[stor6.length] = stor0.length
        if not stor0.length:
            idx = 0
            while storF652[stor6.length] > idx:
                uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = ceil32(return_data.size) + 640
            while ceil32(return_data.size) + (32 * stor0.length) + 640 > idx:
                address(stor[s + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * stor0.length) + 31) >> 5
            while storF652[stor6.length] > idx:
                uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
                idx = idx + 1
                continue 
        mem[ceil32(return_data.size) + (32 * stor0.length) + 640] = 32
        mem[ceil32(return_data.size) + (32 * stor0.length) + 672] = sub_58ba1bb8.length
        mem[ceil32(return_data.size) + (32 * stor0.length) + 704] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 736] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 768] = 1
        mem[ceil32(return_data.size) + (32 * stor0.length) + 800] = address(arg2)
        mem[ceil32(return_data.size) + (32 * stor0.length) + 832] = msg.sender
        mem[ceil32(return_data.size) + (32 * stor0.length) + 864] = address(arg1)
        mem[ceil32(return_data.size) + (32 * stor0.length) + 896] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 928] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 960] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 992] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 1024] = 0
        mem[ceil32(return_data.size) + (32 * stor0.length) + 1056] = block.timestamp + arg3
        mem[ceil32(return_data.size) + (32 * stor0.length) + 1088] = 448
        mem[ceil32(return_data.size) + (32 * stor0.length) + 1120] = stor0.length
        idx = 0
        s = ceil32(return_data.size) + 640
        t = ceil32(return_data.size) + (32 * stor0.length) + 1152
        while idx < stor0.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x7e2d56f6: mem[ceil32(return_data.size) + (32 * stor0.length) + 640 len (96 * stor0.length) + 512]
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(this.address)
        staticcall this.address.0xf3caad03 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if block.timestamp > !arg3:
            revert with 0, 17
        if stor0.length > test266151307():
            revert with 0, 65
        if stor0.length:
            mem[(2 * ceil32(return_data.size)) + 640 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        sub_58ba1bb8.length++
        uint256(sub_58ba1bb8[sub_58ba1bb8.length].field_0) = sub_58ba1bb8.length
        uint8(storF652[stor6.length].field_0) = 0
        uint8(storF652[stor6.length].field_0) = 0
        uint8(storF652[stor6.length].field_8) = 0
        Mask(240, 0, storF652[stor6.length].field_16) = 0
        storF652[stor6.length].field_256 % 1 = 0
        uint8(storF652[stor6.length].field_16) = 1
        address(storF652[stor6.length].field_24) = address(arg2)
        storF652[stor6.length] = msg.sender
        storF652[stor6.length] = address(arg1)
        address(storF652[stor6.length].field_0) = 0
        storF652[stor6.length].field_256 % 1 = 0
        storF652[stor6.length] = 0
        storF652[stor6.length] = 0
        storF652[stor6.length] = 0
        uint8(storF652[stor6.length].field_0) = 0
        storF652[stor6.length].field_256 % 1 = 0
        storF652[stor6.length] = block.timestamp + arg3
        storF652[stor6.length] = stor0.length
        if not stor0.length:
            idx = 0
            while storF652[stor6.length] > idx:
                uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (2 * ceil32(return_data.size)) + 640
            while (2 * ceil32(return_data.size)) + (32 * stor0.length) + 640 > idx:
                address(stor[s + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * stor0.length) + 31) >> 5
            while storF652[stor6.length] > idx:
                uint256(stor[idx + sha3((11 * stor6.length) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b7)]) = 0
                idx = idx + 1
                continue 
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 640] = 32
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 672] = sub_58ba1bb8.length
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 704] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 736] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 768] = 1
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 800] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 832] = msg.sender
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 864] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 896] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 928] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 960] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 992] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 1024] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 1056] = block.timestamp + arg3
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 1088] = 448
        mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 1120] = stor0.length
        idx = 0
        s = (2 * ceil32(return_data.size)) + 640
        t = (2 * ceil32(return_data.size)) + (32 * stor0.length) + 1152
        while idx < stor0.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x7e2d56f6: mem[(2 * ceil32(return_data.size)) + (32 * stor0.length) + 640 len (96 * stor0.length) + 512]
    return sub_58ba1bb8.length
}

function sub_0d5b6925(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = msg.sender
    require ext_code.size(this.address)
    staticcall this.address.0x28651c7d with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 16
    mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    mem[0] = address(arg1)
    mem[32] = 5
    uint8(sub_e12d9f74[address(arg1)].field_0) = 0
    mem[64] = ceil32(return_data.size) + (32 * stor4.length) + 192
    mem[ceil32(return_data.size) + 160] = stor4.length
    if not stor4.length:
        idx = 0
        while idx < stor4.length:
            if idx >= stor4.length:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(return_data.size) + 204 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[64] = ceil32(return_data.size) + (64 * stor4.length) + 224
            mem[ceil32(return_data.size) + (32 * stor4.length) + 192] = stor4.length
            if not stor4.length:
                idx = 0
                while idx < stor4.length:
                    if idx >= stor4.length:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20] != address(arg1):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                    if var55001 < 1:
                        revert with 0, 17
                    if var59002 < var59001:
                        if 1 > !var63002:
                            revert with 0, 17
                        idx = var65003 + 1
                        s = var65006
                        while idx < stor4.length:
                            if s >= stor4.length:
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * stor4.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if stor4.length < 1:
                                revert with 0, 17
                            if s + 1 < stor4.length - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if stor4.length < 1:
                                revert with 0, 17
                            if stor4.length - 1 >= stor4.length:
                                revert with 0, 50
                            mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                            if not stor4.length:
                                idx = sha3(4)
                                while sha3(4) + stor4.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(4)
                                idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                                while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                                while sha3(4) + stor4.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not stor4.length:
                                revert with 0, 49
                            address(stor4[stor4.length].field_0) = 0
                            stor4.length--
                        revert with 0, 50
                    if stor4.length < 1:
                        revert with 0, 17
                    if stor4.length - 1 >= stor4.length:
                        revert with 0, 50
                    mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                    if not stor4.length:
                        idx = sha3(4)
                        while sha3(4) + stor4.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(4)
                        idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                        while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                            address(stor[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                        while sha3(4) + stor4.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    if not stor4.length:
                        revert with 0, 49
                    address(stor4[stor4.length].field_0) = 0
                    stor4.length--
                if var51001 < 1:
                    revert with 0, 17
                if var55002 < var55001:
                    if 1 > !var59002:
                        revert with 0, 17
                    idx = var61003 + 1
                    s = var61006
                    while idx < stor4.length:
                        if s >= stor4.length:
                            revert with 0, 50
                        mem[(32 * s) + ceil32(return_data.size) + (32 * stor4.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20]
                        if s == -1:
                            revert with 0, 17
                        if stor4.length < 1:
                            revert with 0, 17
                        if s + 1 < stor4.length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if stor4.length < 1:
                            revert with 0, 17
                        if stor4.length - 1 >= stor4.length:
                            revert with 0, 50
                        mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                        if not stor4.length:
                            idx = sha3(4)
                            while sha3(4) + stor4.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(4)
                            idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                            while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                            while sha3(4) + stor4.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not stor4.length:
                            revert with 0, 49
                        address(stor4[stor4.length].field_0) = 0
                        stor4.length--
                    revert with 0, 50
            else:
                mem[0] = 4
                mem[ceil32(return_data.size) + (32 * stor4.length) + 224] = address(stor4.field_0)
                idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                s = sha3(4)
                while ceil32(return_data.size) + (64 * stor4.length) + 192 > idx:
                    mem[idx + 32] = address(stor1[s])
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                while idx < stor4.length:
                    if idx >= stor4.length:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20] != address(arg1):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                    if var59001 < 1:
                        revert with 0, 17
                    if var63002 < var63001:
                        if 1 > !var67002:
                            revert with 0, 17
                        idx = var69003 + 1
                        s = var69006
                        while idx < stor4.length:
                            if s >= stor4.length:
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * stor4.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if stor4.length < 1:
                                revert with 0, 17
                            if s + 1 < stor4.length - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if stor4.length < 1:
                                revert with 0, 17
                            if stor4.length - 1 >= stor4.length:
                                revert with 0, 50
                            mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                            if not stor4.length:
                                idx = sha3(4)
                                while sha3(4) + stor4.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(4)
                                idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                                while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                                while sha3(4) + stor4.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not stor4.length:
                                revert with 0, 49
                            address(stor4[stor4.length].field_0) = 0
                            stor4.length--
                        revert with 0, 50
                    if stor4.length < 1:
                        revert with 0, 17
                    if stor4.length - 1 >= stor4.length:
                        revert with 0, 50
                    mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                    if not stor4.length:
                        idx = sha3(4)
                        while sha3(4) + stor4.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(4)
                        idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                        while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                            address(stor[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                        while sha3(4) + stor4.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    if not stor4.length:
                        revert with 0, 49
                    address(stor4[stor4.length].field_0) = 0
                    stor4.length--
                if var55001 < 1:
                    revert with 0, 17
                if var59002 < var59001:
                    if 1 > !var63002:
                        revert with 0, 17
                    idx = var65003 + 1
                    s = var65006
                    while idx < stor4.length:
                        if s >= stor4.length:
                            revert with 0, 50
                        mem[(32 * s) + ceil32(return_data.size) + (32 * stor4.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20]
                        if s == -1:
                            revert with 0, 17
                        if stor4.length < 1:
                            revert with 0, 17
                        if s + 1 < stor4.length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if stor4.length < 1:
                            revert with 0, 17
                        if stor4.length - 1 >= stor4.length:
                            revert with 0, 50
                        mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                        if not stor4.length:
                            idx = sha3(4)
                            while sha3(4) + stor4.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(4)
                            idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                            while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                            while sha3(4) + stor4.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not stor4.length:
                            revert with 0, 49
                        address(stor4[stor4.length].field_0) = 0
                        stor4.length--
                    revert with 0, 50
            if stor4.length < 1:
                revert with 0, 17
            if stor4.length - 1 >= stor4.length:
                revert with 0, 50
            mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
            if not stor4.length:
                idx = sha3(4)
                while sha3(4) + stor4.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(4)
                idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                    address(stor[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                while sha3(4) + stor4.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            if not stor4.length:
                revert with 0, 49
            address(stor4[stor4.length].field_0) = 0
            stor4.length--
    else:
        mem[0] = 4
        mem[ceil32(return_data.size) + 192] = address(stor4.field_0)
        idx = ceil32(return_data.size) + 192
        s = 0
        while ceil32(return_data.size) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = address(stor4[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stor4.length:
            if idx >= stor4.length:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(return_data.size) + 204 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[64] = ceil32(return_data.size) + (64 * stor4.length) + 224
            mem[ceil32(return_data.size) + (32 * stor4.length) + 192] = stor4.length
            if not stor4.length:
                idx = 0
                while idx < stor4.length:
                    if idx >= stor4.length:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20] != address(arg1):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                    if var59001 < 1:
                        revert with 0, 17
                    if var63002 < var63001:
                        if 1 > !var67002:
                            revert with 0, 17
                        idx = var69003 + 1
                        s = var69006
                        while idx < stor4.length:
                            if s >= stor4.length:
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * stor4.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if stor4.length < 1:
                                revert with 0, 17
                            if s + 1 < stor4.length - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if stor4.length < 1:
                                revert with 0, 17
                            if stor4.length - 1 >= stor4.length:
                                revert with 0, 50
                            mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                            if not stor4.length:
                                idx = sha3(4)
                                while sha3(4) + stor4.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(4)
                                idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                                while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                                while sha3(4) + stor4.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not stor4.length:
                                revert with 0, 49
                            address(stor4[stor4.length].field_0) = 0
                            stor4.length--
                        revert with 0, 50
                    if stor4.length < 1:
                        revert with 0, 17
                    if stor4.length - 1 >= stor4.length:
                        revert with 0, 50
                    mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                    if not stor4.length:
                        idx = sha3(4)
                        while sha3(4) + stor4.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(4)
                        idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                        while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                            address(stor[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                        while sha3(4) + stor4.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    if not stor4.length:
                        revert with 0, 49
                    address(stor4[stor4.length].field_0) = 0
                    stor4.length--
                if var55001 < 1:
                    revert with 0, 17
                if var59002 < var59001:
                    if 1 > !var63002:
                        revert with 0, 17
                    idx = var65003 + 1
                    s = var65006
                    while idx < stor4.length:
                        if s >= stor4.length:
                            revert with 0, 50
                        mem[(32 * s) + ceil32(return_data.size) + (32 * stor4.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20]
                        if s == -1:
                            revert with 0, 17
                        if stor4.length < 1:
                            revert with 0, 17
                        if s + 1 < stor4.length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if stor4.length < 1:
                            revert with 0, 17
                        if stor4.length - 1 >= stor4.length:
                            revert with 0, 50
                        mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                        if not stor4.length:
                            idx = sha3(4)
                            while sha3(4) + stor4.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(4)
                            idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                            while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                            while sha3(4) + stor4.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not stor4.length:
                            revert with 0, 49
                        address(stor4[stor4.length].field_0) = 0
                        stor4.length--
                    revert with 0, 50
            else:
                mem[0] = 4
                mem[ceil32(return_data.size) + (32 * stor4.length) + 224] = address(stor4.field_0)
                idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                s = sha3(4)
                while ceil32(return_data.size) + (64 * stor4.length) + 192 > idx:
                    mem[idx + 32] = address(stor1[s])
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                while idx < stor4.length:
                    if idx >= stor4.length:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20] != address(arg1):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                    if var63001 < 1:
                        revert with 0, 17
                    if var67002 < var67001:
                        if 1 > !var71002:
                            revert with 0, 17
                        idx = var73003 + 1
                        s = var73006
                        while idx < stor4.length:
                            if s >= stor4.length:
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * stor4.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if stor4.length < 1:
                                revert with 0, 17
                            if s + 1 < stor4.length - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if stor4.length < 1:
                                revert with 0, 17
                            if stor4.length - 1 >= stor4.length:
                                revert with 0, 50
                            mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                            if not stor4.length:
                                idx = sha3(4)
                                while sha3(4) + stor4.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(4)
                                idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                                while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                                while sha3(4) + stor4.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not stor4.length:
                                revert with 0, 49
                            address(stor4[stor4.length].field_0) = 0
                            stor4.length--
                        revert with 0, 50
                    if stor4.length < 1:
                        revert with 0, 17
                    if stor4.length - 1 >= stor4.length:
                        revert with 0, 50
                    mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                    if not stor4.length:
                        idx = sha3(4)
                        while sha3(4) + stor4.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(4)
                        idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                        while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                            address(stor[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                        while sha3(4) + stor4.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    if not stor4.length:
                        revert with 0, 49
                    address(stor4[stor4.length].field_0) = 0
                    stor4.length--
                if var59001 < 1:
                    revert with 0, 17
                if var63002 < var63001:
                    if 1 > !var67002:
                        revert with 0, 17
                    idx = var69003 + 1
                    s = var69006
                    while idx < stor4.length:
                        if s >= stor4.length:
                            revert with 0, 50
                        mem[(32 * s) + ceil32(return_data.size) + (32 * stor4.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 236 len 20]
                        if s == -1:
                            revert with 0, 17
                        if stor4.length < 1:
                            revert with 0, 17
                        if s + 1 < stor4.length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if stor4.length < 1:
                            revert with 0, 17
                        if stor4.length - 1 >= stor4.length:
                            revert with 0, 50
                        mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
                        if not stor4.length:
                            idx = sha3(4)
                            while sha3(4) + stor4.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(4)
                            idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                            while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                            while sha3(4) + stor4.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not stor4.length:
                            revert with 0, 49
                        address(stor4[stor4.length].field_0) = 0
                        stor4.length--
                    revert with 0, 50
            if stor4.length < 1:
                revert with 0, 17
            if stor4.length - 1 >= stor4.length:
                revert with 0, 50
            mem[(32 * stor4.length - 1) + ceil32(return_data.size) + (32 * stor4.length) + 224] = 0
            if not stor4.length:
                idx = sha3(4)
                while sha3(4) + stor4.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(4)
                idx = ceil32(return_data.size) + (32 * stor4.length) + 224
                while ceil32(return_data.size) + (64 * stor4.length) + 224 > idx:
                    address(stor[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(4) + (Mask(251, 0, (32 * stor4.length) + 31) >> 5)
                while sha3(4) + stor4.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            if not stor4.length:
                revert with 0, 49
            address(stor4[stor4.length].field_0) = 0
            stor4.length--
}

function sub_afe24ab3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[100] = address(arg1)
    mem[132] = msg.sender
    require ext_code.size(this.address)
    staticcall this.address.0x91006745 with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 16
    mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    uint8(sub_e12d9f74[address(arg2)][1][address(arg3)].field_0) = 0
    mem[0] = address(arg2)
    mem[32] = 5
    mem[64] = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 192
    mem[ceil32(return_data.size) + 160] = uint256(sub_e12d9f74[address(arg2)].field_512)
    if not uint256(sub_e12d9f74[address(arg2)].field_512):
        idx = 0
        while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
            if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                revert with 0, 50
            if mem[(32 * idx) + ceil32(return_data.size) + 204 len 20] != address(arg3):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[0] = address(arg2)
            mem[32] = 5
            mem[64] = ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
            mem[ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 192] = uint256(sub_e12d9f74[address(arg2)].field_512)
            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                idx = 0
                while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                    if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20] != address(arg3):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                    if var61001 < 1:
                        revert with 0, 17
                    if var65002 < var65001:
                        if 1 > !var69002:
                            revert with 0, 17
                        idx = var71003 + 1
                        s = var71006
                        while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                            if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                idx = sha3(sha3(address(arg2), 5) + 2)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg2), 5) + 2)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 49
                            address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                            uint256(sub_e12d9f74[address(arg2)].field_512)--
                        revert with 0, 50
                    if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                        revert with 0, 17
                    if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                        revert with 0, 50
                    mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                    if not uint256(sub_e12d9f74[address(arg2)].field_512):
                        idx = sha3(sha3(address(arg2), 5) + 2)
                        while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(sha3(address(arg2), 5) + 2)
                        idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                        while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                            address(stor[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                        while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    if not uint256(sub_e12d9f74[address(arg2)].field_512):
                        revert with 0, 49
                    address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                    uint256(sub_e12d9f74[address(arg2)].field_512)--
                if var57001 < 1:
                    revert with 0, 17
                if var61002 < var61001:
                    if 1 > !var65002:
                        revert with 0, 17
                    idx = var67003 + 1
                    s = var67006
                    while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                        if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                        if s == -1:
                            revert with 0, 17
                        if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                            revert with 0, 17
                        if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                            revert with 0, 17
                        if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                        if not uint256(sub_e12d9f74[address(arg2)].field_512):
                            idx = sha3(sha3(address(arg2), 5) + 2)
                            while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg2), 5) + 2)
                            idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                            while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                            while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 49
                        address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                        uint256(sub_e12d9f74[address(arg2)].field_512)--
                    revert with 0, 50
            else:
                mem[0] = sha3(address(arg2), 5) + 2
                mem[ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = address(sub_e12d9f74[address(arg2)][2].field_0)
                if (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 32 <= 64:
                    idx = 0
                    while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                        if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20] != address(arg3):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                        if var62001 < 1:
                            revert with 0, 17
                        if var66002 < var66001:
                            if 1 > !var70002:
                                revert with 0, 17
                            idx = var72003 + 1
                            s = var72006
                            while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    idx = sha3(sha3(address(arg2), 5) + 2)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg2), 5) + 2)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 49
                                address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                uint256(sub_e12d9f74[address(arg2)].field_512)--
                            revert with 0, 50
                        if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                            revert with 0, 17
                        if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                        if not uint256(sub_e12d9f74[address(arg2)].field_512):
                            idx = sha3(sha3(address(arg2), 5) + 2)
                            while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg2), 5) + 2)
                            idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                            while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                            while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 49
                        address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                        uint256(sub_e12d9f74[address(arg2)].field_512)--
                    if var58001 < 1:
                        revert with 0, 17
                    if var62002 < var62001:
                        if 1 > !var66002:
                            revert with 0, 17
                        idx = var68003 + 1
                        s = var68006
                        while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                            if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                idx = sha3(sha3(address(arg2), 5) + 2)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg2), 5) + 2)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 49
                            address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                            uint256(sub_e12d9f74[address(arg2)].field_512)--
                        revert with 0, 50
                else:
                    mem[ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 256] = address(sub_e12d9f74[address(arg2)][2].field_256)
                    idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 256
                    s = sha3(sha3(address(arg2), 5) + 2) + 1
                    while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 192 > idx:
                        mem[idx + 32] = address(stor1[s])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    idx = 0
                    while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                        if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20] != address(arg3):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                        if var65001 < 1:
                            revert with 0, 17
                        if var69002 < var69001:
                            if 1 > !var73002:
                                revert with 0, 17
                            idx = var75003 + 1
                            s = var75006
                            while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    idx = sha3(sha3(address(arg2), 5) + 2)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg2), 5) + 2)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 49
                                address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                uint256(sub_e12d9f74[address(arg2)].field_512)--
                            revert with 0, 50
                        if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                            revert with 0, 17
                        if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                        if not uint256(sub_e12d9f74[address(arg2)].field_512):
                            idx = sha3(sha3(address(arg2), 5) + 2)
                            while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg2), 5) + 2)
                            idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                            while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                            while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 49
                        address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                        uint256(sub_e12d9f74[address(arg2)].field_512)--
                    if var61001 < 1:
                        revert with 0, 17
                    if var65002 < var65001:
                        if 1 > !var69002:
                            revert with 0, 17
                        idx = var71003 + 1
                        s = var71006
                        while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                            if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                idx = sha3(sha3(address(arg2), 5) + 2)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg2), 5) + 2)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 49
                            address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                            uint256(sub_e12d9f74[address(arg2)].field_512)--
                        revert with 0, 50
            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                revert with 0, 17
            if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                revert with 0, 50
            mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                idx = sha3(sha3(address(arg2), 5) + 2)
                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(sha3(address(arg2), 5) + 2)
                idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                    address(stor[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                revert with 0, 49
            address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
            uint256(sub_e12d9f74[address(arg2)].field_512)--
    else:
        mem[0] = sha3(address(arg2), 5) + 2
        mem[ceil32(return_data.size) + 192] = address(sub_e12d9f74[address(arg2)][2].field_0)
        if (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 32 <= 64:
            idx = 0
            while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(return_data.size) + 204 len 20] != address(arg3):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = address(arg2)
                mem[32] = 5
                mem[64] = ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                mem[ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 192] = uint256(sub_e12d9f74[address(arg2)].field_512)
                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                    idx = 0
                    while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                        if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20] != address(arg3):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                        if var62001 < 1:
                            revert with 0, 17
                        if var66002 < var66001:
                            if 1 > !var70002:
                                revert with 0, 17
                            idx = var72003 + 1
                            s = var72006
                            while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    idx = sha3(sha3(address(arg2), 5) + 2)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg2), 5) + 2)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 49
                                address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                uint256(sub_e12d9f74[address(arg2)].field_512)--
                            revert with 0, 50
                        if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                            revert with 0, 17
                        if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                        if not uint256(sub_e12d9f74[address(arg2)].field_512):
                            idx = sha3(sha3(address(arg2), 5) + 2)
                            while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg2), 5) + 2)
                            idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                            while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                            while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 49
                        address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                        uint256(sub_e12d9f74[address(arg2)].field_512)--
                    if var58001 < 1:
                        revert with 0, 17
                    if var62002 < var62001:
                        if 1 > !var66002:
                            revert with 0, 17
                        idx = var68003 + 1
                        s = var68006
                        while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                            if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                idx = sha3(sha3(address(arg2), 5) + 2)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg2), 5) + 2)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 49
                            address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                            uint256(sub_e12d9f74[address(arg2)].field_512)--
                        revert with 0, 50
                else:
                    mem[0] = sha3(address(arg2), 5) + 2
                    mem[ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = address(sub_e12d9f74[address(arg2)][2].field_0)
                    if (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 32 <= 64:
                        idx = 0
                        while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                            if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20] != address(arg3):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if var63001 < 1:
                                revert with 0, 17
                            if var67002 < var67001:
                                if 1 > !var71002:
                                    revert with 0, 17
                                idx = var73003 + 1
                                s = var73006
                                while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                    if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 50
                                    mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                        revert with 0, 17
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                    if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                        idx = sha3(sha3(address(arg2), 5) + 2)
                                        while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg2), 5) + 2)
                                        idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                        while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                        while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 49
                                    address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                    uint256(sub_e12d9f74[address(arg2)].field_512)--
                                revert with 0, 50
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                idx = sha3(sha3(address(arg2), 5) + 2)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg2), 5) + 2)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 49
                            address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                            uint256(sub_e12d9f74[address(arg2)].field_512)--
                        if var59001 < 1:
                            revert with 0, 17
                        if var63002 < var63001:
                            if 1 > !var67002:
                                revert with 0, 17
                            idx = var69003 + 1
                            s = var69006
                            while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    idx = sha3(sha3(address(arg2), 5) + 2)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg2), 5) + 2)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 49
                                address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                uint256(sub_e12d9f74[address(arg2)].field_512)--
                            revert with 0, 50
                    else:
                        mem[ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 256] = address(sub_e12d9f74[address(arg2)][2].field_256)
                        idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 256
                        s = sha3(sha3(address(arg2), 5) + 2) + 1
                        while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 192 > idx:
                            mem[idx + 32] = address(stor1[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                            if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20] != address(arg3):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if var66001 < 1:
                                revert with 0, 17
                            if var70002 < var70001:
                                if 1 > !var74002:
                                    revert with 0, 17
                                idx = var76003 + 1
                                s = var76006
                                while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                    if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 50
                                    mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                        revert with 0, 17
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                    if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                        idx = sha3(sha3(address(arg2), 5) + 2)
                                        while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg2), 5) + 2)
                                        idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                        while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                        while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 49
                                    address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                    uint256(sub_e12d9f74[address(arg2)].field_512)--
                                revert with 0, 50
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                idx = sha3(sha3(address(arg2), 5) + 2)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg2), 5) + 2)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 49
                            address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                            uint256(sub_e12d9f74[address(arg2)].field_512)--
                        if var62001 < 1:
                            revert with 0, 17
                        if var66002 < var66001:
                            if 1 > !var70002:
                                revert with 0, 17
                            idx = var72003 + 1
                            s = var72006
                            while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    idx = sha3(sha3(address(arg2), 5) + 2)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg2), 5) + 2)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 49
                                address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                uint256(sub_e12d9f74[address(arg2)].field_512)--
                            revert with 0, 50
                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                    revert with 0, 17
                if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                    revert with 0, 50
                mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                    idx = sha3(sha3(address(arg2), 5) + 2)
                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3(sha3(address(arg2), 5) + 2)
                    idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                    while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                        address(stor[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                    revert with 0, 49
                address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                uint256(sub_e12d9f74[address(arg2)].field_512)--
        else:
            mem[ceil32(return_data.size) + 224] = address(sub_e12d9f74[address(arg2)][2].field_256)
            idx = ceil32(return_data.size) + 224
            s = 1
            while ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 160 > idx:
                mem[idx + 32] = address(sub_e12d9f74[address(arg2)][s + 2].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(return_data.size) + 204 len 20] != address(arg3):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = address(arg2)
                mem[32] = 5
                mem[64] = ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                mem[ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 192] = uint256(sub_e12d9f74[address(arg2)].field_512)
                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                    idx = 0
                    while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                        if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20] != address(arg3):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                        if var65001 < 1:
                            revert with 0, 17
                        if var69002 < var69001:
                            if 1 > !var73002:
                                revert with 0, 17
                            idx = var75003 + 1
                            s = var75006
                            while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    idx = sha3(sha3(address(arg2), 5) + 2)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg2), 5) + 2)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 49
                                address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                uint256(sub_e12d9f74[address(arg2)].field_512)--
                            revert with 0, 50
                        if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                            revert with 0, 17
                        if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 50
                        mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                        if not uint256(sub_e12d9f74[address(arg2)].field_512):
                            idx = sha3(sha3(address(arg2), 5) + 2)
                            while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg2), 5) + 2)
                            idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                            while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                            while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_e12d9f74[address(arg2)].field_512):
                            revert with 0, 49
                        address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                        uint256(sub_e12d9f74[address(arg2)].field_512)--
                    if var61001 < 1:
                        revert with 0, 17
                    if var65002 < var65001:
                        if 1 > !var69002:
                            revert with 0, 17
                        idx = var71003 + 1
                        s = var71006
                        while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                            if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                idx = sha3(sha3(address(arg2), 5) + 2)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg2), 5) + 2)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 49
                            address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                            uint256(sub_e12d9f74[address(arg2)].field_512)--
                        revert with 0, 50
                else:
                    mem[0] = sha3(address(arg2), 5) + 2
                    mem[ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = address(sub_e12d9f74[address(arg2)][2].field_0)
                    if (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 32 <= 64:
                        idx = 0
                        while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                            if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20] != address(arg3):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if var66001 < 1:
                                revert with 0, 17
                            if var70002 < var70001:
                                if 1 > !var74002:
                                    revert with 0, 17
                                idx = var76003 + 1
                                s = var76006
                                while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                    if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 50
                                    mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                        revert with 0, 17
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                    if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                        idx = sha3(sha3(address(arg2), 5) + 2)
                                        while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg2), 5) + 2)
                                        idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                        while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                        while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 49
                                    address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                    uint256(sub_e12d9f74[address(arg2)].field_512)--
                                revert with 0, 50
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                idx = sha3(sha3(address(arg2), 5) + 2)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg2), 5) + 2)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 49
                            address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                            uint256(sub_e12d9f74[address(arg2)].field_512)--
                        if var62001 < 1:
                            revert with 0, 17
                        if var66002 < var66001:
                            if 1 > !var70002:
                                revert with 0, 17
                            idx = var72003 + 1
                            s = var72006
                            while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    idx = sha3(sha3(address(arg2), 5) + 2)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg2), 5) + 2)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 49
                                address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                uint256(sub_e12d9f74[address(arg2)].field_512)--
                            revert with 0, 50
                    else:
                        mem[ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 256] = address(sub_e12d9f74[address(arg2)][2].field_256)
                        idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 256
                        s = sha3(sha3(address(arg2), 5) + 2) + 1
                        while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 192 > idx:
                            mem[idx + 32] = address(stor1[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                            if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20] != address(arg3):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if var69001 < 1:
                                revert with 0, 17
                            if var73002 < var73001:
                                if 1 > !var77002:
                                    revert with 0, 17
                                idx = var79003 + 1
                                s = var79006
                                while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                    if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 50
                                    mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                        revert with 0, 17
                                    if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                    if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                        idx = sha3(sha3(address(arg2), 5) + 2)
                                        while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg2), 5) + 2)
                                        idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                        while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                        while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                        revert with 0, 49
                                    address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                    uint256(sub_e12d9f74[address(arg2)].field_512)--
                                revert with 0, 50
                            if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                revert with 0, 17
                            if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 50
                            mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                idx = sha3(sha3(address(arg2), 5) + 2)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg2), 5) + 2)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                revert with 0, 49
                            address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                            uint256(sub_e12d9f74[address(arg2)].field_512)--
                        if var65001 < 1:
                            revert with 0, 17
                        if var69002 < var69001:
                            if 1 > !var73002:
                                revert with 0, 17
                            idx = var75003 + 1
                            s = var75006
                            while idx < uint256(sub_e12d9f74[address(arg2)].field_512):
                                if s >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_e12d9f74[address(arg2)].field_512) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                                    revert with 0, 17
                                if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    idx = sha3(sha3(address(arg2), 5) + 2)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg2), 5) + 2)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                                    revert with 0, 49
                                address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                                uint256(sub_e12d9f74[address(arg2)].field_512)--
                            revert with 0, 50
                if uint256(sub_e12d9f74[address(arg2)].field_512) < 1:
                    revert with 0, 17
                if uint256(sub_e12d9f74[address(arg2)].field_512) - 1 >= uint256(sub_e12d9f74[address(arg2)].field_512):
                    revert with 0, 50
                mem[(32 * uint256(sub_e12d9f74[address(arg2)].field_512) - 1) + ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224] = 0
                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                    idx = sha3(sha3(address(arg2), 5) + 2)
                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3(sha3(address(arg2), 5) + 2)
                    idx = ceil32(return_data.size) + (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224
                    while ceil32(return_data.size) + (64 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 224 > idx:
                        address(stor[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(address(arg2), 5) + 2) + (Mask(251, 0, (32 * uint256(sub_e12d9f74[address(arg2)].field_512)) + 31) >> 5)
                    while sha3(sha3(address(arg2), 5) + 2) + uint256(sub_e12d9f74[address(arg2)].field_512) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                if not uint256(sub_e12d9f74[address(arg2)].field_512):
                    revert with 0, 49
                address(stor[uint256(sub_e12d9f74[address(arg2)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_e12d9f74', 5)))].field_0) = 0
                uint256(sub_e12d9f74[address(arg2)].field_512)--
}

function removeManager(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = arg1
    mem[132] = msg.sender
    require ext_code.size(this.address)
    staticcall this.address.0x91006745 with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 16
    mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    uint8(sub_3894bf5a[address(arg1)][3][address(arg2)].field_0) = 0
    mem[0] = arg1
    mem[32] = 3
    mem[64] = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 192
    mem[ceil32(return_data.size) + 160] = uint256(sub_3894bf5a[address(arg1)].field_1536)
    if not uint256(sub_3894bf5a[address(arg1)].field_1536):
        idx = 0
        while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                revert with 0, 50
            if mem[(32 * idx) + ceil32(return_data.size) + 204 len 20] != arg2:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = 3
            mem[64] = ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
            mem[ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 192] = uint256(sub_3894bf5a[address(arg1)].field_1536)
            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                idx = 0
                while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                    if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20] != arg2:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                    if var58001 < 1:
                        revert with 0, 17
                    if var62002 < var62001:
                        if 1 > !var66002:
                            revert with 0, 17
                        idx = var68003 + 1
                        s = var68006
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                            if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                idx = sha3(sha3(address(arg1), 3) + 6)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 6)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1536)--
                        revert with 0, 50
                    if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                        revert with 0, 17
                    if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                        revert with 0, 50
                    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                    if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                        idx = sha3(sha3(address(arg1), 3) + 6)
                        while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(sha3(address(arg1), 3) + 6)
                        idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                        while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                            address(stor[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                        while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                        revert with 0, 49
                    address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                    uint256(sub_3894bf5a[address(arg1)].field_1536)--
                if var54001 < 1:
                    revert with 0, 17
                if var58002 < var58001:
                    if 1 > !var62002:
                        revert with 0, 17
                    idx = var64003 + 1
                    s = var64006
                    while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                        if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                        if s == -1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                            revert with 0, 17
                        if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                        if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                            idx = sha3(sha3(address(arg1), 3) + 6)
                            while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg1), 3) + 6)
                            idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                            while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                            while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 49
                        address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                        uint256(sub_3894bf5a[address(arg1)].field_1536)--
                    revert with 0, 50
            else:
                mem[0] = sha3(address(arg1), 3) + 6
                mem[ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = address(sub_3894bf5a[address(arg1)][6].field_0)
                if (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 32 <= 64:
                    idx = 0
                    while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20] != arg2:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                        if var59001 < 1:
                            revert with 0, 17
                        if var63002 < var63001:
                            if 1 > !var67002:
                                revert with 0, 17
                            idx = var69003 + 1
                            s = var69006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    idx = sha3(sha3(address(arg1), 3) + 6)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 6)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1536)--
                            revert with 0, 50
                        if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                        if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                            idx = sha3(sha3(address(arg1), 3) + 6)
                            while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg1), 3) + 6)
                            idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                            while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                            while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 49
                        address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                        uint256(sub_3894bf5a[address(arg1)].field_1536)--
                    if var55001 < 1:
                        revert with 0, 17
                    if var59002 < var59001:
                        if 1 > !var63002:
                            revert with 0, 17
                        idx = var65003 + 1
                        s = var65006
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                            if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                idx = sha3(sha3(address(arg1), 3) + 6)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 6)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1536)--
                        revert with 0, 50
                else:
                    mem[ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 256] = address(sub_3894bf5a[address(arg1)][6].field_256)
                    idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 256
                    s = sha3(sha3(address(arg1), 3) + 6) + 1
                    while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 192 > idx:
                        mem[idx + 32] = address(stor1[s])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    idx = 0
                    while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20] != arg2:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                        if var62001 < 1:
                            revert with 0, 17
                        if var66002 < var66001:
                            if 1 > !var70002:
                                revert with 0, 17
                            idx = var72003 + 1
                            s = var72006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    idx = sha3(sha3(address(arg1), 3) + 6)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 6)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1536)--
                            revert with 0, 50
                        if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                        if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                            idx = sha3(sha3(address(arg1), 3) + 6)
                            while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg1), 3) + 6)
                            idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                            while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                            while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 49
                        address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                        uint256(sub_3894bf5a[address(arg1)].field_1536)--
                    if var58001 < 1:
                        revert with 0, 17
                    if var62002 < var62001:
                        if 1 > !var66002:
                            revert with 0, 17
                        idx = var68003 + 1
                        s = var68006
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                            if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                idx = sha3(sha3(address(arg1), 3) + 6)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 6)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1536)--
                        revert with 0, 50
            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                revert with 0, 17
            if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                revert with 0, 50
            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                idx = sha3(sha3(address(arg1), 3) + 6)
                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(sha3(address(arg1), 3) + 6)
                idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                    address(stor[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                revert with 0, 49
            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
            uint256(sub_3894bf5a[address(arg1)].field_1536)--
    else:
        mem[0] = sha3(address(arg1), 3) + 6
        mem[ceil32(return_data.size) + 192] = address(sub_3894bf5a[address(arg1)][6].field_0)
        if (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 32 <= 64:
            idx = 0
            while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(return_data.size) + 204 len 20] != arg2:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 3
                mem[64] = ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                mem[ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 192] = uint256(sub_3894bf5a[address(arg1)].field_1536)
                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                    idx = 0
                    while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20] != arg2:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                        if var59001 < 1:
                            revert with 0, 17
                        if var63002 < var63001:
                            if 1 > !var67002:
                                revert with 0, 17
                            idx = var69003 + 1
                            s = var69006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    idx = sha3(sha3(address(arg1), 3) + 6)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 6)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1536)--
                            revert with 0, 50
                        if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                        if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                            idx = sha3(sha3(address(arg1), 3) + 6)
                            while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg1), 3) + 6)
                            idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                            while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                            while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 49
                        address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                        uint256(sub_3894bf5a[address(arg1)].field_1536)--
                    if var55001 < 1:
                        revert with 0, 17
                    if var59002 < var59001:
                        if 1 > !var63002:
                            revert with 0, 17
                        idx = var65003 + 1
                        s = var65006
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                            if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                idx = sha3(sha3(address(arg1), 3) + 6)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 6)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1536)--
                        revert with 0, 50
                else:
                    mem[0] = sha3(address(arg1), 3) + 6
                    mem[ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = address(sub_3894bf5a[address(arg1)][6].field_0)
                    if (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 32 <= 64:
                        idx = 0
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20] != arg2:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if var60001 < 1:
                                revert with 0, 17
                            if var64002 < var64001:
                                if 1 > !var68002:
                                    revert with 0, 17
                                idx = var70003 + 1
                                s = var70006
                                while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 50
                                    mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        idx = sha3(sha3(address(arg1), 3) + 6)
                                        while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg1), 3) + 6)
                                        idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                        while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                        while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 49
                                    address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                    uint256(sub_3894bf5a[address(arg1)].field_1536)--
                                revert with 0, 50
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                idx = sha3(sha3(address(arg1), 3) + 6)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 6)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1536)--
                        if var56001 < 1:
                            revert with 0, 17
                        if var60002 < var60001:
                            if 1 > !var64002:
                                revert with 0, 17
                            idx = var66003 + 1
                            s = var66006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    idx = sha3(sha3(address(arg1), 3) + 6)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 6)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1536)--
                            revert with 0, 50
                    else:
                        mem[ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 256] = address(sub_3894bf5a[address(arg1)][6].field_256)
                        idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 256
                        s = sha3(sha3(address(arg1), 3) + 6) + 1
                        while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 192 > idx:
                            mem[idx + 32] = address(stor1[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20] != arg2:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if var63001 < 1:
                                revert with 0, 17
                            if var67002 < var67001:
                                if 1 > !var71002:
                                    revert with 0, 17
                                idx = var73003 + 1
                                s = var73006
                                while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 50
                                    mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        idx = sha3(sha3(address(arg1), 3) + 6)
                                        while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg1), 3) + 6)
                                        idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                        while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                        while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 49
                                    address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                    uint256(sub_3894bf5a[address(arg1)].field_1536)--
                                revert with 0, 50
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                idx = sha3(sha3(address(arg1), 3) + 6)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 6)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1536)--
                        if var59001 < 1:
                            revert with 0, 17
                        if var63002 < var63001:
                            if 1 > !var67002:
                                revert with 0, 17
                            idx = var69003 + 1
                            s = var69006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    idx = sha3(sha3(address(arg1), 3) + 6)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 6)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1536)--
                            revert with 0, 50
                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                    revert with 0, 17
                if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                    revert with 0, 50
                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                    idx = sha3(sha3(address(arg1), 3) + 6)
                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3(sha3(address(arg1), 3) + 6)
                    idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                    while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                        address(stor[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                    revert with 0, 49
                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                uint256(sub_3894bf5a[address(arg1)].field_1536)--
        else:
            mem[ceil32(return_data.size) + 224] = address(sub_3894bf5a[address(arg1)][6].field_256)
            idx = ceil32(return_data.size) + 224
            s = 1
            while ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 160 > idx:
                mem[idx + 32] = address(sub_3894bf5a[address(arg1)][s + 6].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(return_data.size) + 204 len 20] != arg2:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 3
                mem[64] = ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                mem[ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 192] = uint256(sub_3894bf5a[address(arg1)].field_1536)
                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                    idx = 0
                    while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20] != arg2:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                        if var62001 < 1:
                            revert with 0, 17
                        if var66002 < var66001:
                            if 1 > !var70002:
                                revert with 0, 17
                            idx = var72003 + 1
                            s = var72006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    idx = sha3(sha3(address(arg1), 3) + 6)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 6)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1536)--
                            revert with 0, 50
                        if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 50
                        mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                        if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                            idx = sha3(sha3(address(arg1), 3) + 6)
                            while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg1), 3) + 6)
                            idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                            while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                            while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                            revert with 0, 49
                        address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                        uint256(sub_3894bf5a[address(arg1)].field_1536)--
                    if var58001 < 1:
                        revert with 0, 17
                    if var62002 < var62001:
                        if 1 > !var66002:
                            revert with 0, 17
                        idx = var68003 + 1
                        s = var68006
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                            if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                idx = sha3(sha3(address(arg1), 3) + 6)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 6)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1536)--
                        revert with 0, 50
                else:
                    mem[0] = sha3(address(arg1), 3) + 6
                    mem[ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = address(sub_3894bf5a[address(arg1)][6].field_0)
                    if (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 32 <= 64:
                        idx = 0
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20] != arg2:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if var63001 < 1:
                                revert with 0, 17
                            if var67002 < var67001:
                                if 1 > !var71002:
                                    revert with 0, 17
                                idx = var73003 + 1
                                s = var73006
                                while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 50
                                    mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        idx = sha3(sha3(address(arg1), 3) + 6)
                                        while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg1), 3) + 6)
                                        idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                        while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                        while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 49
                                    address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                    uint256(sub_3894bf5a[address(arg1)].field_1536)--
                                revert with 0, 50
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                idx = sha3(sha3(address(arg1), 3) + 6)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 6)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1536)--
                        if var59001 < 1:
                            revert with 0, 17
                        if var63002 < var63001:
                            if 1 > !var67002:
                                revert with 0, 17
                            idx = var69003 + 1
                            s = var69006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    idx = sha3(sha3(address(arg1), 3) + 6)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 6)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1536)--
                            revert with 0, 50
                    else:
                        mem[ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 256] = address(sub_3894bf5a[address(arg1)][6].field_256)
                        idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 256
                        s = sha3(sha3(address(arg1), 3) + 6) + 1
                        while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 192 > idx:
                            mem[idx + 32] = address(stor1[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            if mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20] != arg2:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if var66001 < 1:
                                revert with 0, 17
                            if var70002 < var70001:
                                if 1 > !var74002:
                                    revert with 0, 17
                                idx = var76003 + 1
                                s = var76006
                                while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 50
                                    mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        idx = sha3(sha3(address(arg1), 3) + 6)
                                        while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg1), 3) + 6)
                                        idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                        while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                        while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                        revert with 0, 49
                                    address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                    uint256(sub_3894bf5a[address(arg1)].field_1536)--
                                revert with 0, 50
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                idx = sha3(sha3(address(arg1), 3) + 6)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 6)
                                idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1536)--
                        if var62001 < 1:
                            revert with 0, 17
                        if var66002 < var66001:
                            if 1 > !var70002:
                                revert with 0, 17
                            idx = var72003 + 1
                            s = var72006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1536):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * s) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1536) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    idx = sha3(sha3(address(arg1), 3) + 6)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 6)
                                    idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                                    while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1536)--
                            revert with 0, 50
                if uint256(sub_3894bf5a[address(arg1)].field_1536) < 1:
                    revert with 0, 17
                if uint256(sub_3894bf5a[address(arg1)].field_1536) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1536):
                    revert with 0, 50
                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1536) - 1) + ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224] = 0
                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                    idx = sha3(sha3(address(arg1), 3) + 6)
                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3(sha3(address(arg1), 3) + 6)
                    idx = ceil32(return_data.size) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224
                    while ceil32(return_data.size) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 224 > idx:
                        address(stor[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(address(arg1), 3) + 6) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1536)) + 31) >> 5)
                    while sha3(sha3(address(arg1), 3) + 6) + uint256(sub_3894bf5a[address(arg1)].field_1536) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                if not uint256(sub_3894bf5a[address(arg1)].field_1536):
                    revert with 0, 49
                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1536) + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                uint256(sub_3894bf5a[address(arg1)].field_1536)--
}

function sub_3c10eee5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = msg.sender
    require ext_code.size(this.address)
    staticcall this.address.0xf3caad03 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 16
    mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    mem[ceil32(return_data.size) + 164] = address(arg1)
    require ext_code.size(this.address)
    staticcall this.address.0x3894bf5a with:
            gas gas_remaining wei
           args address(arg1)
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 1:
        revert with 0, 'adm<2'
    uint8(sub_3894bf5a[address(arg1)][2][address(arg2)].field_0) = 0
    mem[0] = address(arg1)
    mem[32] = 3
    mem[64] = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 192
    mem[(2 * ceil32(return_data.size)) + 160] = uint256(sub_3894bf5a[address(arg1)].field_1280)
    if not uint256(sub_3894bf5a[address(arg1)].field_1280):
        idx = 0
        while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                revert with 0, 50
            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 204 len 20] != address(arg2):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[0] = address(arg1)
            mem[32] = 3
            mem[64] = (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
            mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 192] = uint256(sub_3894bf5a[address(arg1)].field_1280)
            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                idx = 0
                while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                    if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                        revert with 0, 50
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20] != address(arg2):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                        revert with 0, 50
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                    if var66001 < 1:
                        revert with 0, 17
                    if var70002 < var70001:
                        if 1 > !var74002:
                            revert with 0, 17
                        idx = var76003 + 1
                        s = var76006
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                            if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                idx = sha3(sha3(address(arg1), 3) + 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 5)
                                idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1280)--
                        revert with 0, 50
                    if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                        revert with 0, 17
                    if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                        revert with 0, 50
                    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                    if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                        idx = sha3(sha3(address(arg1), 3) + 5)
                        while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(sha3(address(arg1), 3) + 5)
                        idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                        while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                            address(stor[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                        while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                        revert with 0, 49
                    address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                    uint256(sub_3894bf5a[address(arg1)].field_1280)--
                if var62001 < 1:
                    revert with 0, 17
                if var66002 < var66001:
                    if 1 > !var70002:
                        revert with 0, 17
                    idx = var72003 + 1
                    s = var72006
                    while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                        if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                        if s == -1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                            revert with 0, 17
                        if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                        if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                            idx = sha3(sha3(address(arg1), 3) + 5)
                            while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg1), 3) + 5)
                            idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                            while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                            while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 49
                        address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                        uint256(sub_3894bf5a[address(arg1)].field_1280)--
                    revert with 0, 50
            else:
                mem[0] = sha3(address(arg1), 3) + 5
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = address(sub_3894bf5a[address(arg1)][5].field_0)
                if (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 32 <= 64:
                    idx = 0
                    while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20] != address(arg2):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                        if var67001 < 1:
                            revert with 0, 17
                        if var71002 < var71001:
                            if 1 > !var75002:
                                revert with 0, 17
                            idx = var77003 + 1
                            s = var77006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    idx = sha3(sha3(address(arg1), 3) + 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 5)
                                    idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                    while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1280)--
                            revert with 0, 50
                        if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                        if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                            idx = sha3(sha3(address(arg1), 3) + 5)
                            while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg1), 3) + 5)
                            idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                            while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                            while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 49
                        address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                        uint256(sub_3894bf5a[address(arg1)].field_1280)--
                    if var63001 < 1:
                        revert with 0, 17
                    if var67002 < var67001:
                        if 1 > !var71002:
                            revert with 0, 17
                        idx = var73003 + 1
                        s = var73006
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                            if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                idx = sha3(sha3(address(arg1), 3) + 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 5)
                                idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1280)--
                        revert with 0, 50
                else:
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 256] = address(sub_3894bf5a[address(arg1)][5].field_256)
                    idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 256
                    s = sha3(sha3(address(arg1), 3) + 5) + 1
                    while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 192 > idx:
                        mem[idx + 32] = address(stor1[s])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    idx = 0
                    while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20] != address(arg2):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                        if var70001 < 1:
                            revert with 0, 17
                        if var74002 < var74001:
                            if 1 > !var78002:
                                revert with 0, 17
                            idx = var80003 + 1
                            s = var80006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    idx = sha3(sha3(address(arg1), 3) + 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 5)
                                    idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                    while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1280)--
                            revert with 0, 50
                        if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                        if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                            idx = sha3(sha3(address(arg1), 3) + 5)
                            while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg1), 3) + 5)
                            idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                            while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                            while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 49
                        address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                        uint256(sub_3894bf5a[address(arg1)].field_1280)--
                    if var66001 < 1:
                        revert with 0, 17
                    if var70002 < var70001:
                        if 1 > !var74002:
                            revert with 0, 17
                        idx = var76003 + 1
                        s = var76006
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                            if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                idx = sha3(sha3(address(arg1), 3) + 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 5)
                                idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1280)--
                        revert with 0, 50
            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                revert with 0, 17
            if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                revert with 0, 50
            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                idx = sha3(sha3(address(arg1), 3) + 5)
                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(sha3(address(arg1), 3) + 5)
                idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                    address(stor[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                revert with 0, 49
            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
            uint256(sub_3894bf5a[address(arg1)].field_1280)--
    else:
        mem[0] = sha3(address(arg1), 3) + 5
        mem[(2 * ceil32(return_data.size)) + 192] = address(sub_3894bf5a[address(arg1)][5].field_0)
        if (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 32 <= 64:
            idx = 0
            while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                    revert with 0, 50
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 204 len 20] != address(arg2):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = address(arg1)
                mem[32] = 3
                mem[64] = (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 192] = uint256(sub_3894bf5a[address(arg1)].field_1280)
                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                    idx = 0
                    while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20] != address(arg2):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                        if var67001 < 1:
                            revert with 0, 17
                        if var71002 < var71001:
                            if 1 > !var75002:
                                revert with 0, 17
                            idx = var77003 + 1
                            s = var77006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    idx = sha3(sha3(address(arg1), 3) + 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 5)
                                    idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                    while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1280)--
                            revert with 0, 50
                        if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                        if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                            idx = sha3(sha3(address(arg1), 3) + 5)
                            while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg1), 3) + 5)
                            idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                            while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                            while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 49
                        address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                        uint256(sub_3894bf5a[address(arg1)].field_1280)--
                    if var63001 < 1:
                        revert with 0, 17
                    if var67002 < var67001:
                        if 1 > !var71002:
                            revert with 0, 17
                        idx = var73003 + 1
                        s = var73006
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                            if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                idx = sha3(sha3(address(arg1), 3) + 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 5)
                                idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1280)--
                        revert with 0, 50
                else:
                    mem[0] = sha3(address(arg1), 3) + 5
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = address(sub_3894bf5a[address(arg1)][5].field_0)
                    if (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 32 <= 64:
                        idx = 0
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20] != address(arg2):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if var68001 < 1:
                                revert with 0, 17
                            if var72002 < var72001:
                                if 1 > !var76002:
                                    revert with 0, 17
                                idx = var78003 + 1
                                s = var78006
                                while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 50
                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        idx = sha3(sha3(address(arg1), 3) + 5)
                                        while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg1), 3) + 5)
                                        idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                        while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                        while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 49
                                    address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                    uint256(sub_3894bf5a[address(arg1)].field_1280)--
                                revert with 0, 50
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                idx = sha3(sha3(address(arg1), 3) + 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 5)
                                idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1280)--
                        if var64001 < 1:
                            revert with 0, 17
                        if var68002 < var68001:
                            if 1 > !var72002:
                                revert with 0, 17
                            idx = var74003 + 1
                            s = var74006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    idx = sha3(sha3(address(arg1), 3) + 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 5)
                                    idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                    while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1280)--
                            revert with 0, 50
                    else:
                        mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 256] = address(sub_3894bf5a[address(arg1)][5].field_256)
                        idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 256
                        s = sha3(sha3(address(arg1), 3) + 5) + 1
                        while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 192 > idx:
                            mem[idx + 32] = address(stor1[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20] != address(arg2):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if var71001 < 1:
                                revert with 0, 17
                            if var75002 < var75001:
                                if 1 > !var79002:
                                    revert with 0, 17
                                idx = var81003 + 1
                                s = var81006
                                while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 50
                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        idx = sha3(sha3(address(arg1), 3) + 5)
                                        while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg1), 3) + 5)
                                        idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                        while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                        while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 49
                                    address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                    uint256(sub_3894bf5a[address(arg1)].field_1280)--
                                revert with 0, 50
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                idx = sha3(sha3(address(arg1), 3) + 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 5)
                                idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1280)--
                        if var67001 < 1:
                            revert with 0, 17
                        if var71002 < var71001:
                            if 1 > !var75002:
                                revert with 0, 17
                            idx = var77003 + 1
                            s = var77006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    idx = sha3(sha3(address(arg1), 3) + 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 5)
                                    idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                    while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1280)--
                            revert with 0, 50
                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                    revert with 0, 17
                if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                    revert with 0, 50
                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                    idx = sha3(sha3(address(arg1), 3) + 5)
                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3(sha3(address(arg1), 3) + 5)
                    idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                    while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                        address(stor[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                    revert with 0, 49
                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                uint256(sub_3894bf5a[address(arg1)].field_1280)--
        else:
            mem[(2 * ceil32(return_data.size)) + 224] = address(sub_3894bf5a[address(arg1)][5].field_256)
            idx = (2 * ceil32(return_data.size)) + 224
            s = 1
            while (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 160 > idx:
                mem[idx + 32] = address(sub_3894bf5a[address(arg1)][s + 5].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                    revert with 0, 50
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 204 len 20] != address(arg2):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = address(arg1)
                mem[32] = 3
                mem[64] = (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 192] = uint256(sub_3894bf5a[address(arg1)].field_1280)
                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                    idx = 0
                    while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20] != address(arg2):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                        if var70001 < 1:
                            revert with 0, 17
                        if var74002 < var74001:
                            if 1 > !var78002:
                                revert with 0, 17
                            idx = var80003 + 1
                            s = var80006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    idx = sha3(sha3(address(arg1), 3) + 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 5)
                                    idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                    while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1280)--
                            revert with 0, 50
                        if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                            revert with 0, 17
                        if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 50
                        mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                        if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                            idx = sha3(sha3(address(arg1), 3) + 5)
                            while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(sha3(address(arg1), 3) + 5)
                            idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                            while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                            while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                            revert with 0, 49
                        address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                        uint256(sub_3894bf5a[address(arg1)].field_1280)--
                    if var66001 < 1:
                        revert with 0, 17
                    if var70002 < var70001:
                        if 1 > !var74002:
                            revert with 0, 17
                        idx = var76003 + 1
                        s = var76006
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                            if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                idx = sha3(sha3(address(arg1), 3) + 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 5)
                                idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1280)--
                        revert with 0, 50
                else:
                    mem[0] = sha3(address(arg1), 3) + 5
                    mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = address(sub_3894bf5a[address(arg1)][5].field_0)
                    if (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 32 <= 64:
                        idx = 0
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20] != address(arg2):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if var71001 < 1:
                                revert with 0, 17
                            if var75002 < var75001:
                                if 1 > !var79002:
                                    revert with 0, 17
                                idx = var81003 + 1
                                s = var81006
                                while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 50
                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        idx = sha3(sha3(address(arg1), 3) + 5)
                                        while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg1), 3) + 5)
                                        idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                        while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                        while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 49
                                    address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                    uint256(sub_3894bf5a[address(arg1)].field_1280)--
                                revert with 0, 50
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                idx = sha3(sha3(address(arg1), 3) + 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 5)
                                idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1280)--
                        if var67001 < 1:
                            revert with 0, 17
                        if var71002 < var71001:
                            if 1 > !var75002:
                                revert with 0, 17
                            idx = var77003 + 1
                            s = var77006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    idx = sha3(sha3(address(arg1), 3) + 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 5)
                                    idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                    while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1280)--
                            revert with 0, 50
                    else:
                        mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 256] = address(sub_3894bf5a[address(arg1)][5].field_256)
                        idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 256
                        s = sha3(sha3(address(arg1), 3) + 5) + 1
                        while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 192 > idx:
                            mem[idx + 32] = address(stor1[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20] != address(arg2):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if var74001 < 1:
                                revert with 0, 17
                            if var78002 < var78001:
                                if 1 > !var82002:
                                    revert with 0, 17
                                idx = var84003 + 1
                                s = var84006
                                while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 50
                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                    if s == -1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                        revert with 0, 17
                                    if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                        if 1 > !(s + 1):
                                            revert with 0, 17
                                        idx = s + 2
                                        s = s + 1
                                        continue 
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                        revert with 0, 17
                                    if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 50
                                    mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        idx = sha3(sha3(address(arg1), 3) + 5)
                                        while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(sha3(address(arg1), 3) + 5)
                                        idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                        while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                        while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                        revert with 0, 49
                                    address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                    uint256(sub_3894bf5a[address(arg1)].field_1280)--
                                revert with 0, 50
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                revert with 0, 17
                            if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 50
                            mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                idx = sha3(sha3(address(arg1), 3) + 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(sha3(address(arg1), 3) + 5)
                                idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                revert with 0, 49
                            address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                            uint256(sub_3894bf5a[address(arg1)].field_1280)--
                        if var70001 < 1:
                            revert with 0, 17
                        if var74002 < var74001:
                            if 1 > !var78002:
                                revert with 0, 17
                            idx = var80003 + 1
                            s = var80006
                            while idx < uint256(sub_3894bf5a[address(arg1)].field_1280):
                                if s >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 236 len 20]
                                if s == -1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if s + 1 < uint256(sub_3894bf5a[address(arg1)].field_1280) - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                                    revert with 0, 17
                                if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 50
                                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    idx = sha3(sha3(address(arg1), 3) + 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(sha3(address(arg1), 3) + 5)
                                    idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                                    while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                                    revert with 0, 49
                                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                                uint256(sub_3894bf5a[address(arg1)].field_1280)--
                            revert with 0, 50
                if uint256(sub_3894bf5a[address(arg1)].field_1280) < 1:
                    revert with 0, 17
                if uint256(sub_3894bf5a[address(arg1)].field_1280) - 1 >= uint256(sub_3894bf5a[address(arg1)].field_1280):
                    revert with 0, 50
                mem[(32 * uint256(sub_3894bf5a[address(arg1)].field_1280) - 1) + (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224] = 0
                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                    idx = sha3(sha3(address(arg1), 3) + 5)
                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3(sha3(address(arg1), 3) + 5)
                    idx = (2 * ceil32(return_data.size)) + (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224
                    while (2 * ceil32(return_data.size)) + (64 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 224 > idx:
                        address(stor[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(address(arg1), 3) + 5) + (Mask(251, 0, (32 * uint256(sub_3894bf5a[address(arg1)].field_1280)) + 31) >> 5)
                    while sha3(sha3(address(arg1), 3) + 5) + uint256(sub_3894bf5a[address(arg1)].field_1280) > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                if not uint256(sub_3894bf5a[address(arg1)].field_1280):
                    revert with 0, 49
                address(stor[uint256(sub_3894bf5a[address(arg1)].field_1280) + ('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_3894bf5a', 3)))].field_0) = 0
                uint256(sub_3894bf5a[address(arg1)].field_1280)--
}



}
