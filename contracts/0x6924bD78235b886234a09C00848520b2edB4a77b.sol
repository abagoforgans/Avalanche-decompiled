contract main {




// =====================  Runtime code  =====================


#
#  - sub_60a406d8(?)
#
array of struct stor0;
array of address stor1;
address stor2;
array of struct tokens;
array of struct cities;
array of struct sub_58ba1bb8;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of struct sub_60c8b28d;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of struct stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699765;
array of struct stor1546678032441257452667456735582814959992782782816731922691272282333561699766;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699767;
array of struct stor1546678032441257452667456735582814959992782782816731922691272282333561699768;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699769;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699770;

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return address(tokens[arg1].field_0)
}

function sub_523759ba(?) {
    return sub_58ba1bb8.length
}

function sub_58ba1bb8(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_58ba1bb8.length
    if uint8(sub_58ba1bb8[arg1].field_264) >= 2:
        revert with 0, 33
    if uint8(sub_58ba1bb8[arg1].field_272) >= 5:
        revert with 0, 33
    if uint8(sub_58ba1bb8[arg1].field_1536) >= 3:
        revert with 0, 33
    return uint256(sub_58ba1bb8[arg1].field_0), 
           bool(uint8(sub_58ba1bb8[arg1].field_256)),
           uint8(sub_58ba1bb8[arg1].field_256),
           uint8(sub_58ba1bb8[arg1].field_256),
           address(sub_58ba1bb8[arg1].field_280),
           address(sub_58ba1bb8[arg1].field_512),
           uint256(sub_58ba1bb8[arg1].field_768),
           uint256(sub_58ba1bb8[arg1].field_1024),
           uint256(sub_58ba1bb8[arg1].field_1280),
           uint8(sub_58ba1bb8[arg1].field_1536),
           uint256(sub_58ba1bb8[arg1].field_1792),
           address(sub_58ba1bb8[arg1].field_2048),
           uint256(sub_58ba1bb8[arg1].field_2304)
}

function sub_60c8b28d(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return bool(uint8(sub_60c8b28d[arg1][arg2].field_0)), bool(uint8(sub_60c8b28d[arg1][arg2].field_8))
}

function cities(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < cities.length
    return address(cities[arg1].field_0)
}

function sub_83f2d371(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return bool(uint8(sub_60c8b28d[arg1][address(arg2)].field_8))
}

function _fallback() payable {
  stop
}

function addToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    tokens.length++
    address(tokens[tokens.length].field_0) = arg1
    stor6[address(arg1)] = 1
}

function getTokens() {
    if tokens.length:
        mem[128] = address(tokens.field_0)
        if (32 * tokens.length) + 32 > 64:
            mem[160] = address(tokens.field_256)
            idx = 160
            s = 1
            while (32 * tokens.length) + 96 > idx:
                mem[idx + 32] = address(tokens[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * tokens.length) + 128] = 32
    mem[(32 * tokens.length) + 160] = tokens.length
    idx = 0
    s = (32 * tokens.length) + 192
    t = 128
    while idx < tokens.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * tokens.length) + 128
       len (96 * tokens.length) + 64
}

function getCities() {
    mem[64] = (32 * cities.length) + 128
    mem[96] = cities.length
    if not cities.length:
        mem[(32 * cities.length) + 128] = 32
        mem[(32 * cities.length) + 160] = cities.length
        idx = 0
        s = (32 * cities.length) + 192
        t = 128
        while idx < cities.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * cities.length) + 128
           len (96 * cities.length) + 64
    mem[128] = address(cities.field_0)
    idx = 128
    s = 0
    while (32 * cities.length) + 96 > idx:
        mem[idx + 32] = address(cities[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * cities.length) + 128] = 32
    mem[(32 * cities.length) + 160] = cities.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < cities.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * cities.length) + -mem[64] + 192
}

function sub_71f5d6f2(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(stor2)
        staticcall stor2.0x2ef0e1ca with:
                gas gas_remaining wei
               args address(this.address), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '', 0
    if not stor6[address(arg2)]:
        revert with 0, 'TKN NT ALLOW'
    if not stor7[address(arg1)]:
        revert with 0, 'CITY NT ALLOW'
    require ext_code.size(address(arg1))
    call address(arg1).withdrawFund(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_32e82875(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    mem[64] = (32 * uint256(sub_58ba1bb8[arg1].field_2560)) + 128
    mem[96] = uint256(sub_58ba1bb8[arg1].field_2560)
    if not uint256(sub_58ba1bb8[arg1].field_2560):
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
    mem[128] = address(stor[sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 5) + 10)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(sub_58ba1bb8[arg1].field_2560)) + 96 > idx:
        mem[idx + 32] = address(stor[s + sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 5) + 10)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(sub_58ba1bb8[arg1].field_2560)) + 128] = 32
    mem[(32 * uint256(sub_58ba1bb8[arg1].field_2560)) + 160] = uint256(sub_58ba1bb8[arg1].field_2560)
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < uint256(sub_58ba1bb8[arg1].field_2560):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * uint256(sub_58ba1bb8[arg1].field_2560)) + -mem[64] + 192
}

function sub_002202c5(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(stor2)
        staticcall stor2.0x2ef0e1ca with:
                gas gas_remaining wei
               args address(this.address), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '', 0
    if not stor6[address(arg2)]:
        revert with 0, 'TKN NT ALLOW'
    if not stor7[address(arg1)]:
        revert with 0, 'CITY NT ALLOW'
    if not address(arg2):
        call address(arg1) with:
           value arg3 wei
             gas gas_remaining wei
        require ext_call.success
    else:
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        call address(arg1).0xc15bde with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    ('bool', 'ext_call.success')
}

function refundToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(stor2)
        staticcall stor2.0x2ef0e1ca with:
                gas gas_remaining wei
               args address(this.address), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            require ext_code.size(stor2)
            staticcall stor2.0xf3caad03 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '', 0
    if not stor6[address(arg1)]:
        revert with 0, 'TKN NT ALLOW'
    if not arg1:
        call stor1.length with:
           value arg2 wei
             gas gas_remaining wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor1.length, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b645e022(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(stor2)
        staticcall stor2.0x2ef0e1ca with:
                gas gas_remaining wei
               args address(this.address), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '', 0
    if not stor6[address(arg3)]:
        revert with 0, 'TKN NT ALLOW'
    if not stor7[address(arg1)]:
        revert with 0, 'CITY NT ALLOW'
    if not stor7[address(arg2)]:
        revert with 0, 'CITY NT ALLOW'
    require ext_code.size(address(arg1))
    staticcall address(arg1).isTokenAllowed(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token Not Allowed 1'
    require ext_code.size(address(arg2))
    staticcall address(arg2).isTokenAllowed(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token Not Allowed 2'
    require ext_code.size(address(arg1))
    call address(arg1).0x86c69af8 with:
         gas gas_remaining wei
        args address(arg3), arg4, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setName(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor0.length = 0
            idx = 0
            while (uint255(stor0.length) * 0.5) + 31 / 32 > idx:
                uint256(stor0[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            stor0.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                uint256(stor0[s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while (uint255(stor0.length) * 0.5) + 31 / 32 > idx:
                uint256(stor0[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if not arg1.length:
            stor0.length = 0
            idx = 0
            while stor0.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor0[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            stor0.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                uint256(stor0[s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor0.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor0[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_ac4006aa(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require ext_code.size(stor2)
    staticcall stor2.0xf3caad03 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint8(sub_58ba1bb8[arg1].field_272) > 4:
        revert with 0, 33
    if uint8(sub_58ba1bb8[arg1].field_272):
        revert with 0, '', 0
    if uint8(sub_60c8b28d[arg1][address(msg.sender)].field_0):
        revert with 0, 'ALR VOTED'
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint8(sub_58ba1bb8[arg1].field_256):
        revert with 0, 'PRP EXP'
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if block.timestamp >= uint256(sub_58ba1bb8[arg1].field_1792):
        revert with 0, 'EXPIRED'
    uint8(sub_60c8b28d[arg1][msg.sender].field_0) = 1
    Mask(248, 0, sub_60c8b28d[arg1][msg.sender].field_8) = Mask(248, 0, bool(arg2))
    Mask(240, 0, sub_60c8b28d[arg1][msg.sender].field_16) = 0
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint256(sub_58ba1bb8[arg1].field_768) > -2:
        revert with 0, 17
    uint256(sub_58ba1bb8[arg1].field_768)++
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    uint256(sub_58ba1bb8[arg1].field_2560)++
    uint256(stor[sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 5) + 10) + uint256(sub_58ba1bb8[arg1].field_2560)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 5) + 10) + uint256(sub_58ba1bb8[arg1].field_2560)].field_0))
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if not arg2:
        if uint256(sub_58ba1bb8[arg1].field_1280) > -2:
            revert with 0, 17
        uint256(sub_58ba1bb8[arg1].field_1280)++
    else:
        if uint256(sub_58ba1bb8[arg1].field_1024) > -2:
            revert with 0, 17
        uint256(sub_58ba1bb8[arg1].field_1024)++
    require ext_code.size(stor2)
    staticcall stor2.0x2f2b31db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint256(sub_58ba1bb8[arg1].field_768) <= ext_call.return_data[0] / 2:
    else:
        if arg1 >= sub_58ba1bb8.length:
            revert with 0, 50
        if uint256(sub_58ba1bb8[arg1].field_1024) > uint256(sub_58ba1bb8[arg1].field_1280):
            uint8(sub_58ba1bb8[arg1].field_1536) = 1
        if arg1 >= sub_58ba1bb8.length:
            revert with 0, 50
        if uint256(sub_58ba1bb8[arg1].field_1024) <= uint256(sub_58ba1bb8[arg1].field_1280):
            uint8(sub_58ba1bb8[arg1].field_1536) = 2
        uint8(sub_58ba1bb8[arg1].field_256) = 1
    if uint8(sub_58ba1bb8[arg1].field_256):
        if arg1 >= sub_58ba1bb8.length:
            revert with 0, 50
        if uint8(sub_58ba1bb8[arg1].field_1536) > 2:
            revert with 0, 33
        if uint8(sub_58ba1bb8[arg1].field_1536) == 1:
            if arg1 >= sub_58ba1bb8.length:
                revert with 0, 50
            if uint8(sub_58ba1bb8[arg1].field_264) > 1:
                revert with 0, 33
            if not uint8(sub_58ba1bb8[arg1].field_264):
                if arg1 >= sub_58ba1bb8.length:
                    revert with 0, 50
                stor1.length = address(sub_58ba1bb8[arg1].field_280)
}

function sub_83a52539(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require ext_code.size(stor2)
    staticcall stor2.0xf3caad03 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint8(sub_58ba1bb8[arg1].field_272) > 4:
        revert with 0, 33
    if uint8(sub_58ba1bb8[arg1].field_272) != 3:
        revert with 0, '', 0
    if uint8(sub_60c8b28d[arg1][address(msg.sender)].field_0):
        revert with 0, 'ALR VOTED'
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint8(sub_58ba1bb8[arg1].field_256):
        revert with 0, 'PRP EXP'
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if block.timestamp >= uint256(sub_58ba1bb8[arg1].field_1792):
        revert with 0, 'EXPIRED'
    uint8(sub_60c8b28d[arg1][msg.sender].field_0) = 1
    Mask(248, 0, sub_60c8b28d[arg1][msg.sender].field_8) = Mask(248, 0, bool(arg2))
    Mask(240, 0, sub_60c8b28d[arg1][msg.sender].field_16) = 0
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint256(sub_58ba1bb8[arg1].field_768) > -2:
        revert with 0, 17
    uint256(sub_58ba1bb8[arg1].field_768)++
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    uint256(sub_58ba1bb8[arg1].field_2560)++
    uint256(stor[sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 5) + 10) + uint256(sub_58ba1bb8[arg1].field_2560)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 5) + 10) + uint256(sub_58ba1bb8[arg1].field_2560)].field_0))
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if not arg2:
        if uint256(sub_58ba1bb8[arg1].field_1280) > -2:
            revert with 0, 17
        uint256(sub_58ba1bb8[arg1].field_1280)++
    else:
        if uint256(sub_58ba1bb8[arg1].field_1024) > -2:
            revert with 0, 17
        uint256(sub_58ba1bb8[arg1].field_1024)++
    require ext_code.size(stor2)
    staticcall stor2.0x2f2b31db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint256(sub_58ba1bb8[arg1].field_768) <= ext_call.return_data[0] / 2:
    else:
        if arg1 >= sub_58ba1bb8.length:
            revert with 0, 50
        if uint256(sub_58ba1bb8[arg1].field_1024) > uint256(sub_58ba1bb8[arg1].field_1280):
            uint8(sub_58ba1bb8[arg1].field_1536) = 1
        if arg1 >= sub_58ba1bb8.length:
            revert with 0, 50
        if uint256(sub_58ba1bb8[arg1].field_1024) <= uint256(sub_58ba1bb8[arg1].field_1280):
            uint8(sub_58ba1bb8[arg1].field_1536) = 2
        uint8(sub_58ba1bb8[arg1].field_256) = 1
    if uint8(sub_58ba1bb8[arg1].field_256):
        if arg1 >= sub_58ba1bb8.length:
            revert with 0, 50
        if uint8(sub_58ba1bb8[arg1].field_1536) > 2:
            revert with 0, 33
        if uint8(sub_58ba1bb8[arg1].field_1536) == 1:
            if arg1 >= sub_58ba1bb8.length:
                revert with 0, 50
            if uint8(sub_58ba1bb8[arg1].field_264) > 1:
                revert with 0, 33
            if not uint8(sub_58ba1bb8[arg1].field_264):
                if arg1 >= sub_58ba1bb8.length:
                    revert with 0, 50
                require ext_code.size(address(sub_58ba1bb8[arg1].field_2048))
                call address(sub_58ba1bb8[arg1].field_2048).0x476004de with:
                     gas gas_remaining wei
                    args address(sub_58ba1bb8[arg1].field_280)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[ceil32(stor0.length.field_1 % 128) + stor0.length.field_1 % 128 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function sub_cd1cb951(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 16
    mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    mem[ceil32(return_data.size) + 160] = sub_58ba1bb8.length
    mem[ceil32(return_data.size) + 192] = 0
    mem[ceil32(return_data.size) + 224] = 1
    mem[ceil32(return_data.size) + 256] = 2
    mem[ceil32(return_data.size) + 288] = address(arg1)
    mem[ceil32(return_data.size) + 320] = msg.sender
    mem[ceil32(return_data.size) + 352] = 0
    mem[ceil32(return_data.size) + 384] = 0
    mem[ceil32(return_data.size) + 416] = 0
    mem[ceil32(return_data.size) + 448] = 0
    if block.timestamp > !arg2:
        revert with 0, 17
    mem[ceil32(return_data.size) + 480] = block.timestamp + arg2
    mem[ceil32(return_data.size) + 512] = 0
    mem[ceil32(return_data.size) + 544] = 0
    require ext_code.size(stor2)
    staticcall stor2.0x2f2b31db with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 608] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    if ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 640 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    mem[ceil32(return_data.size) + 576] = (2 * ceil32(return_data.size)) + 608
    sub_58ba1bb8.length++
    stor36B6[stor5.length] = sub_58ba1bb8.length
    uint8(stor36B6[stor5.length].field_0) = 0
    uint8(stor36B6[stor5.length].field_0) = 0
    uint8(stor36B6[stor5.length].field_8) = 1
    Mask(240, 0, stor36B6[stor5.length].field_16) = 0
    uint8(stor36B6[stor5.length].field_16) = 2
    address(stor36B6[stor5.length].field_24) = address(arg1)
    stor36B6[stor5.length] = msg.sender
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = 0
    uint8(stor36B6[stor5.length].field_0) = 0
    stor36B6[stor5.length].field_256 % 1 = 0
    stor36B6[stor5.length] = block.timestamp + arg2
    address(stor36B6[stor5.length].field_0) = 0
    stor36B6[stor5.length].field_256 % 1 = 0
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        idx = 0
        while stor36B6[stor5.length] > idx:
            uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (2 * ceil32(return_data.size)) + 640
        while (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640 > idx:
            address(stor[s + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
        while stor36B6[stor5.length] > idx:
            uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
            idx = idx + 1
            continue 
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640] = 32
    idx = 0
    s = (2 * ceil32(return_data.size)) + 640
    t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152
    while idx < ext_call.return_data[0]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x322a1185: 32, sub_58ba1bb8.length, 0, 1, 2, address(arg1), msg.sender, 0, 0, 0, 0, block.timestamp + arg2, 0, 0, 448, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152 len 32 * ext_call.return_data[0]]
    return sub_58ba1bb8.length
}

function sub_2cdb363b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 16
    mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    mem[ceil32(return_data.size) + 160] = sub_58ba1bb8.length
    mem[ceil32(return_data.size) + 192] = 0
    mem[ceil32(return_data.size) + 224] = 0
    mem[ceil32(return_data.size) + 256] = 2
    mem[ceil32(return_data.size) + 288] = address(arg1)
    mem[ceil32(return_data.size) + 320] = msg.sender
    mem[ceil32(return_data.size) + 352] = 0
    mem[ceil32(return_data.size) + 384] = 0
    mem[ceil32(return_data.size) + 416] = 0
    mem[ceil32(return_data.size) + 448] = 0
    if block.timestamp > !arg2:
        revert with 0, 17
    mem[ceil32(return_data.size) + 480] = block.timestamp + arg2
    mem[ceil32(return_data.size) + 512] = 0
    mem[ceil32(return_data.size) + 544] = 0
    require ext_code.size(stor2)
    staticcall stor2.0x2f2b31db with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 608] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    if ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 640 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    mem[ceil32(return_data.size) + 576] = (2 * ceil32(return_data.size)) + 608
    sub_58ba1bb8.length++
    stor36B6[stor5.length] = sub_58ba1bb8.length
    uint8(stor36B6[stor5.length].field_0) = 0
    uint8(stor36B6[stor5.length].field_0) = 0
    uint8(stor36B6[stor5.length].field_8) = 0
    Mask(240, 0, stor36B6[stor5.length].field_16) = 0
    stor36B6[stor5.length].field_256 % 1 = 0
    uint8(stor36B6[stor5.length].field_16) = 2
    address(stor36B6[stor5.length].field_24) = address(arg1)
    stor36B6[stor5.length] = msg.sender
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = 0
    uint8(stor36B6[stor5.length].field_0) = 0
    stor36B6[stor5.length].field_256 % 1 = 0
    stor36B6[stor5.length] = block.timestamp + arg2
    address(stor36B6[stor5.length].field_0) = 0
    stor36B6[stor5.length].field_256 % 1 = 0
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        idx = 0
        while stor36B6[stor5.length] > idx:
            uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (2 * ceil32(return_data.size)) + 640
        while (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640 > idx:
            address(stor[s + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
        while stor36B6[stor5.length] > idx:
            uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
            idx = idx + 1
            continue 
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640] = 32
    idx = 0
    s = (2 * ceil32(return_data.size)) + 640
    t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152
    while idx < ext_call.return_data[0]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x322a1185: 32, sub_58ba1bb8.length, 0, 0, 2, address(arg1), msg.sender, 0, 0, 0, 0, block.timestamp + arg2, 0, 0, 448, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152 len 32 * ext_call.return_data[0]]
    return sub_58ba1bb8.length
}

function sub_175ef7db(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 16
    mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if not stor7[address(arg1)]:
        revert with 0, 'CITY NT ALLOW'
    mem[ceil32(return_data.size) + 160] = sub_58ba1bb8.length
    mem[ceil32(return_data.size) + 192] = 0
    mem[ceil32(return_data.size) + 224] = 0
    mem[ceil32(return_data.size) + 256] = 3
    mem[ceil32(return_data.size) + 288] = address(arg2)
    mem[ceil32(return_data.size) + 320] = msg.sender
    mem[ceil32(return_data.size) + 352] = 0
    mem[ceil32(return_data.size) + 384] = 0
    mem[ceil32(return_data.size) + 416] = 0
    mem[ceil32(return_data.size) + 448] = 0
    if block.timestamp > !arg3:
        revert with 0, 17
    mem[ceil32(return_data.size) + 480] = block.timestamp + arg3
    mem[ceil32(return_data.size) + 512] = address(arg1)
    mem[ceil32(return_data.size) + 544] = 0
    require ext_code.size(stor2)
    staticcall stor2.0x2f2b31db with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 608] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    if ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 640 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    mem[ceil32(return_data.size) + 576] = (2 * ceil32(return_data.size)) + 608
    sub_58ba1bb8.length++
    stor36B6[stor5.length] = sub_58ba1bb8.length
    uint8(stor36B6[stor5.length].field_0) = 0
    uint8(stor36B6[stor5.length].field_0) = 0
    uint8(stor36B6[stor5.length].field_8) = 0
    Mask(240, 0, stor36B6[stor5.length].field_16) = 0
    stor36B6[stor5.length].field_256 % 1 = 0
    uint8(stor36B6[stor5.length].field_16) = 3
    address(stor36B6[stor5.length].field_24) = address(arg2)
    stor36B6[stor5.length] = msg.sender
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = 0
    uint8(stor36B6[stor5.length].field_0) = 0
    stor36B6[stor5.length].field_256 % 1 = 0
    stor36B6[stor5.length] = block.timestamp + arg3
    address(stor36B6[stor5.length].field_0) = address(arg1)
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        idx = 0
        while stor36B6[stor5.length] > idx:
            uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (2 * ceil32(return_data.size)) + 640
        while (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640 > idx:
            address(stor[s + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
        while stor36B6[stor5.length] > idx:
            uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
            idx = idx + 1
            continue 
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640] = 32
    idx = 0
    s = (2 * ceil32(return_data.size)) + 640
    t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152
    while idx < ext_call.return_data[0]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x322a1185: 32, sub_58ba1bb8.length, 0, 0, 3, address(arg2), msg.sender, 0, 0, 0, 0, block.timestamp + arg3, address(arg1), 0, 448, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152 len 32 * ext_call.return_data[0]]
    return sub_58ba1bb8.length
}

function sub_e2fa39ba(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require ext_code.size(stor2)
    staticcall stor2.0xf3caad03 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint8(sub_58ba1bb8[arg1].field_272) > 4:
        revert with 0, 33
    if uint8(sub_58ba1bb8[arg1].field_272) != 4:
        revert with 0, '', 0
    if uint8(sub_60c8b28d[arg1][address(msg.sender)].field_0):
        revert with 0, 'ALR VOTED'
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint8(sub_58ba1bb8[arg1].field_256):
        revert with 0, 'PRP EXP'
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if block.timestamp >= uint256(sub_58ba1bb8[arg1].field_1792):
        revert with 0, 'EXPIRED'
    uint8(sub_60c8b28d[arg1][msg.sender].field_0) = 1
    Mask(248, 0, sub_60c8b28d[arg1][msg.sender].field_8) = Mask(248, 0, bool(arg2))
    Mask(240, 0, sub_60c8b28d[arg1][msg.sender].field_16) = 0
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint256(sub_58ba1bb8[arg1].field_768) > -2:
        revert with 0, 17
    uint256(sub_58ba1bb8[arg1].field_768)++
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    uint256(sub_58ba1bb8[arg1].field_2560)++
    uint256(stor[sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 5) + 10) + uint256(sub_58ba1bb8[arg1].field_2560)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 5) + 10) + uint256(sub_58ba1bb8[arg1].field_2560)].field_0))
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if not arg2:
        if uint256(sub_58ba1bb8[arg1].field_1280) > -2:
            revert with 0, 17
        uint256(sub_58ba1bb8[arg1].field_1280)++
    else:
        if uint256(sub_58ba1bb8[arg1].field_1024) > -2:
            revert with 0, 17
        uint256(sub_58ba1bb8[arg1].field_1024)++
    require ext_code.size(stor2)
    staticcall stor2.0x2f2b31db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint256(sub_58ba1bb8[arg1].field_768) <= ext_call.return_data[0] / 2:
    else:
        if arg1 >= sub_58ba1bb8.length:
            revert with 0, 50
        if uint256(sub_58ba1bb8[arg1].field_1024) > uint256(sub_58ba1bb8[arg1].field_1280):
            uint8(sub_58ba1bb8[arg1].field_1536) = 1
        if arg1 >= sub_58ba1bb8.length:
            revert with 0, 50
        if uint256(sub_58ba1bb8[arg1].field_1024) <= uint256(sub_58ba1bb8[arg1].field_1280):
            uint8(sub_58ba1bb8[arg1].field_1536) = 2
        uint8(sub_58ba1bb8[arg1].field_256) = 1
    if uint8(sub_58ba1bb8[arg1].field_256):
        if arg1 >= sub_58ba1bb8.length:
            revert with 0, 50
        if uint8(sub_58ba1bb8[arg1].field_1536) > 2:
            revert with 0, 33
        if uint8(sub_58ba1bb8[arg1].field_1536) == 1:
            if arg1 >= sub_58ba1bb8.length:
                revert with 0, 50
            if uint8(sub_58ba1bb8[arg1].field_264) > 1:
                revert with 0, 33
            if uint8(sub_58ba1bb8[arg1].field_264) == 1:
                if arg1 >= sub_58ba1bb8.length:
                    revert with 0, 50
                if arg1 >= sub_58ba1bb8.length:
                    revert with 0, 50
                if not address(sub_58ba1bb8[arg1].field_2048):
                    call address(sub_58ba1bb8[arg1].field_280) with:
                       value uint256(sub_58ba1bb8[arg1].field_2304) wei
                         gas gas_remaining wei
                    require ext_call.success
                else:
                    require ext_code.size(address(sub_58ba1bb8[arg1].field_2048))
                    call address(sub_58ba1bb8[arg1].field_2048).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(sub_58ba1bb8[arg1].field_256), uint256(sub_58ba1bb8[arg1].field_2304)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c62e8f5a(?) {
    mem[100] = this.address
    mem[132] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        mem[64] = ceil32(return_data.size) + 160
        mem[ceil32(return_data.size) + 96] = 16
        mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
        idx = 0
        while idx < cities.length:
            mem[0] = 4
            mem[ceil32(return_data.size) + 160] = 0xc62e8f5a00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cities[idx].field_0))
            call address(cities[idx].field_0).0xc62e8f5a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < tokens.length:
            mem[0] = 3
            if not address(tokens[idx].field_0):
                call stor1.length with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if idx >= tokens.length:
                    revert with 0, 50
                mem[0] = 3
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(tokens[idx].field_0))
                staticcall address(tokens[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _95 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _97 = mem[_95]
                mem[mem[64] + 4] = stor1.length
                mem[mem[64] + 36] = _97
                require ext_code.size(address(tokens[idx].field_0))
                call address(tokens[idx].field_0).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1.length, _97
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _103 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_103] == bool(mem[_103])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(stor2)
        staticcall stor2.0xf3caad03 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[64] = (2 * ceil32(return_data.size)) + 160
        mem[(2 * ceil32(return_data.size)) + 96] = 16
        mem[(2 * ceil32(return_data.size)) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        idx = 0
        while idx < cities.length:
            mem[0] = 4
            mem[(2 * ceil32(return_data.size)) + 160] = 0xc62e8f5a00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cities[idx].field_0))
            call address(cities[idx].field_0).0xc62e8f5a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < tokens.length:
            mem[0] = 3
            if not address(tokens[idx].field_0):
                call stor1.length with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if idx >= tokens.length:
                    revert with 0, 50
                mem[0] = 3
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(tokens[idx].field_0))
                staticcall address(tokens[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _96 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _98 = mem[_96]
                mem[mem[64] + 4] = stor1.length
                mem[mem[64] + 36] = _98
                require ext_code.size(address(tokens[idx].field_0))
                call address(tokens[idx].field_0).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1.length, _98
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _104 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_104] == bool(mem[_104])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function transferToken(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 16
        mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
        if not stor6[address(arg2)]:
            revert with 0, 'TKN NT ALLOW'
        mem[ceil32(return_data.size) + 160] = sub_58ba1bb8.length
        mem[ceil32(return_data.size) + 192] = 0
        mem[ceil32(return_data.size) + 224] = 1
        mem[ceil32(return_data.size) + 256] = 4
        mem[ceil32(return_data.size) + 288] = arg1
        mem[ceil32(return_data.size) + 320] = msg.sender
        mem[ceil32(return_data.size) + 352] = 0
        mem[ceil32(return_data.size) + 384] = 0
        mem[ceil32(return_data.size) + 416] = 0
        mem[ceil32(return_data.size) + 448] = 0
        if block.timestamp > !arg4:
            revert with 0, 17
        mem[ceil32(return_data.size) + 480] = block.timestamp + arg4
        mem[ceil32(return_data.size) + 512] = arg2
        mem[ceil32(return_data.size) + 544] = arg3
        require ext_code.size(stor2)
        staticcall stor2.0x2f2b31db with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 608] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        if ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 640 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        mem[ceil32(return_data.size) + 576] = (2 * ceil32(return_data.size)) + 608
        sub_58ba1bb8.length++
        stor36B6[stor5.length] = sub_58ba1bb8.length
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_8) = 1
        Mask(240, 0, stor36B6[stor5.length].field_16) = 0
        uint8(stor36B6[stor5.length].field_16) = 4
        address(stor36B6[stor5.length].field_24) = arg1
        stor36B6[stor5.length] = msg.sender
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        stor36B6[stor5.length] = block.timestamp + arg4
        address(stor36B6[stor5.length].field_0) = arg2
        stor36B6[stor5.length] = arg3
        stor36B6[stor5.length] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            idx = 0
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (2 * ceil32(return_data.size)) + 640
            while (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640 > idx:
                address(stor[s + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640] = 32
        idx = 0
        s = (2 * ceil32(return_data.size)) + 640
        t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x322a1185: 32, sub_58ba1bb8.length, 0, 1, 4, address(arg1), msg.sender, 0, 0, 0, 0, block.timestamp + arg4, address(arg2), arg3, 448, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152 len 32 * ext_call.return_data[0]]
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(stor2)
        staticcall stor2.0xf3caad03 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 16
        mem[(2 * ceil32(return_data.size)) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if not stor6[address(arg2)]:
            revert with 0, 'TKN NT ALLOW'
        mem[(2 * ceil32(return_data.size)) + 160] = sub_58ba1bb8.length
        mem[(2 * ceil32(return_data.size)) + 192] = 0
        mem[(2 * ceil32(return_data.size)) + 224] = 1
        mem[(2 * ceil32(return_data.size)) + 256] = 4
        mem[(2 * ceil32(return_data.size)) + 288] = arg1
        mem[(2 * ceil32(return_data.size)) + 320] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 352] = 0
        mem[(2 * ceil32(return_data.size)) + 384] = 0
        mem[(2 * ceil32(return_data.size)) + 416] = 0
        mem[(2 * ceil32(return_data.size)) + 448] = 0
        if block.timestamp > !arg4:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 480] = block.timestamp + arg4
        mem[(2 * ceil32(return_data.size)) + 512] = arg2
        mem[(2 * ceil32(return_data.size)) + 544] = arg3
        require ext_code.size(stor2)
        staticcall stor2.0x2f2b31db with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        if ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 640 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        mem[(2 * ceil32(return_data.size)) + 576] = (4 * ceil32(return_data.size)) + 608
        sub_58ba1bb8.length++
        stor36B6[stor5.length] = sub_58ba1bb8.length
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_8) = 1
        Mask(240, 0, stor36B6[stor5.length].field_16) = 0
        uint8(stor36B6[stor5.length].field_16) = 4
        address(stor36B6[stor5.length].field_24) = arg1
        stor36B6[stor5.length] = msg.sender
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        stor36B6[stor5.length] = block.timestamp + arg4
        address(stor36B6[stor5.length].field_0) = arg2
        stor36B6[stor5.length] = arg3
        stor36B6[stor5.length] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            idx = 0
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (4 * ceil32(return_data.size)) + 640
            while (4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640 > idx:
                address(stor[s + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        mem[(4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640] = 32
        idx = 0
        s = (4 * ceil32(return_data.size)) + 640
        t = (4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x322a1185: 32, sub_58ba1bb8.length, 0, 1, 4, address(arg1), msg.sender, 0, 0, 0, 0, block.timestamp + arg4, address(arg2), arg3, 448, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152 len 32 * ext_call.return_data[0]]
    return sub_58ba1bb8.length
}

function sub_65a73334(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 16
        mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
        mem[ceil32(return_data.size) + 160] = sub_58ba1bb8.length
        mem[ceil32(return_data.size) + 192] = 0
        mem[ceil32(return_data.size) + 224] = 0
        mem[ceil32(return_data.size) + 256] = 0
        mem[ceil32(return_data.size) + 288] = address(arg1)
        mem[ceil32(return_data.size) + 320] = msg.sender
        mem[ceil32(return_data.size) + 352] = 0
        mem[ceil32(return_data.size) + 384] = 0
        mem[ceil32(return_data.size) + 416] = 0
        mem[ceil32(return_data.size) + 448] = 0
        if block.timestamp > !arg2:
            revert with 0, 17
        mem[ceil32(return_data.size) + 480] = block.timestamp + arg2
        mem[ceil32(return_data.size) + 512] = 0
        mem[ceil32(return_data.size) + 544] = 0
        require ext_code.size(stor2)
        staticcall stor2.0x2f2b31db with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 608] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        if ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 640 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        mem[ceil32(return_data.size) + 576] = (2 * ceil32(return_data.size)) + 608
        sub_58ba1bb8.length++
        stor36B6[stor5.length] = sub_58ba1bb8.length
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_8) = 0
        Mask(240, 0, stor36B6[stor5.length].field_16) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        uint8(stor36B6[stor5.length].field_16) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        address(stor36B6[stor5.length].field_24) = address(arg1)
        stor36B6[stor5.length] = msg.sender
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        stor36B6[stor5.length] = block.timestamp + arg2
        address(stor36B6[stor5.length].field_0) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            idx = 0
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (2 * ceil32(return_data.size)) + 640
            while (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640 > idx:
                address(stor[s + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640] = 32
        idx = 0
        s = (2 * ceil32(return_data.size)) + 640
        t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x322a1185: 32, sub_58ba1bb8.length, 0, 0, 0, address(arg1), msg.sender, 0, 0, 0, 0, block.timestamp + arg2, 0, 0, 448, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152 len 32 * ext_call.return_data[0]]
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(stor2)
        staticcall stor2.0xf3caad03 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 16
        mem[(2 * ceil32(return_data.size)) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        mem[(2 * ceil32(return_data.size)) + 160] = sub_58ba1bb8.length
        mem[(2 * ceil32(return_data.size)) + 192] = 0
        mem[(2 * ceil32(return_data.size)) + 224] = 0
        mem[(2 * ceil32(return_data.size)) + 256] = 0
        mem[(2 * ceil32(return_data.size)) + 288] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 320] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 352] = 0
        mem[(2 * ceil32(return_data.size)) + 384] = 0
        mem[(2 * ceil32(return_data.size)) + 416] = 0
        mem[(2 * ceil32(return_data.size)) + 448] = 0
        if block.timestamp > !arg2:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 480] = block.timestamp + arg2
        mem[(2 * ceil32(return_data.size)) + 512] = 0
        mem[(2 * ceil32(return_data.size)) + 544] = 0
        require ext_code.size(stor2)
        staticcall stor2.0x2f2b31db with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        if ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 640 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        mem[(2 * ceil32(return_data.size)) + 576] = (4 * ceil32(return_data.size)) + 608
        sub_58ba1bb8.length++
        stor36B6[stor5.length] = sub_58ba1bb8.length
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_8) = 0
        Mask(240, 0, stor36B6[stor5.length].field_16) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        uint8(stor36B6[stor5.length].field_16) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        address(stor36B6[stor5.length].field_24) = address(arg1)
        stor36B6[stor5.length] = msg.sender
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        stor36B6[stor5.length] = block.timestamp + arg2
        address(stor36B6[stor5.length].field_0) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            idx = 0
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (4 * ceil32(return_data.size)) + 640
            while (4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640 > idx:
                address(stor[s + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        mem[(4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640] = 32
        idx = 0
        s = (4 * ceil32(return_data.size)) + 640
        t = (4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x322a1185: 32, sub_58ba1bb8.length, 0, 0, 0, address(arg1), msg.sender, 0, 0, 0, 0, block.timestamp + arg2, 0, 0, 448, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152 len 32 * ext_call.return_data[0]]
    return sub_58ba1bb8.length
}

function sub_e48f997a(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 16
        mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
        if not stor7[address(arg1)]:
            revert with 0, 'CITY NT ALLOW'
        mem[ceil32(return_data.size) + 160] = sub_58ba1bb8.length
        mem[ceil32(return_data.size) + 192] = 0
        mem[ceil32(return_data.size) + 224] = 0
        mem[ceil32(return_data.size) + 256] = 1
        mem[ceil32(return_data.size) + 288] = address(arg2)
        mem[ceil32(return_data.size) + 320] = msg.sender
        mem[ceil32(return_data.size) + 352] = 0
        mem[ceil32(return_data.size) + 384] = 0
        mem[ceil32(return_data.size) + 416] = 0
        mem[ceil32(return_data.size) + 448] = 0
        if block.timestamp > !arg3:
            revert with 0, 17
        mem[ceil32(return_data.size) + 480] = block.timestamp + arg3
        mem[ceil32(return_data.size) + 512] = address(arg1)
        mem[ceil32(return_data.size) + 544] = 0
        require ext_code.size(stor2)
        staticcall stor2.0x2f2b31db with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 608] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        if ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 640 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        mem[ceil32(return_data.size) + 576] = (2 * ceil32(return_data.size)) + 608
        sub_58ba1bb8.length++
        stor36B6[stor5.length] = sub_58ba1bb8.length
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_8) = 0
        Mask(240, 0, stor36B6[stor5.length].field_16) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        uint8(stor36B6[stor5.length].field_16) = 1
        address(stor36B6[stor5.length].field_24) = address(arg2)
        stor36B6[stor5.length] = msg.sender
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        stor36B6[stor5.length] = block.timestamp + arg3
        address(stor36B6[stor5.length].field_0) = address(arg1)
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            idx = 0
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (2 * ceil32(return_data.size)) + 640
            while (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640 > idx:
                address(stor[s + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640] = 32
        idx = 0
        s = (2 * ceil32(return_data.size)) + 640
        t = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x322a1185: 32, sub_58ba1bb8.length, 0, 0, 1, address(arg2), msg.sender, 0, 0, 0, 0, block.timestamp + arg3, address(arg1), 0, 448, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152 len 32 * ext_call.return_data[0]]
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(stor2)
        staticcall stor2.0xf3caad03 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 16
        mem[(2 * ceil32(return_data.size)) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if not stor7[address(arg1)]:
            revert with 0, 'CITY NT ALLOW'
        mem[(2 * ceil32(return_data.size)) + 160] = sub_58ba1bb8.length
        mem[(2 * ceil32(return_data.size)) + 192] = 0
        mem[(2 * ceil32(return_data.size)) + 224] = 0
        mem[(2 * ceil32(return_data.size)) + 256] = 1
        mem[(2 * ceil32(return_data.size)) + 288] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 320] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 352] = 0
        mem[(2 * ceil32(return_data.size)) + 384] = 0
        mem[(2 * ceil32(return_data.size)) + 416] = 0
        mem[(2 * ceil32(return_data.size)) + 448] = 0
        if block.timestamp > !arg3:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 480] = block.timestamp + arg3
        mem[(2 * ceil32(return_data.size)) + 512] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 544] = 0
        require ext_code.size(stor2)
        staticcall stor2.0x2f2b31db with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        if ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 640 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        mem[(2 * ceil32(return_data.size)) + 576] = (4 * ceil32(return_data.size)) + 608
        sub_58ba1bb8.length++
        stor36B6[stor5.length] = sub_58ba1bb8.length
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        uint8(stor36B6[stor5.length].field_8) = 0
        Mask(240, 0, stor36B6[stor5.length].field_16) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        uint8(stor36B6[stor5.length].field_16) = 1
        address(stor36B6[stor5.length].field_24) = address(arg2)
        stor36B6[stor5.length] = msg.sender
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = 0
        uint8(stor36B6[stor5.length].field_0) = 0
        stor36B6[stor5.length].field_256 % 1 = 0
        stor36B6[stor5.length] = block.timestamp + arg3
        address(stor36B6[stor5.length].field_0) = address(arg1)
        stor36B6[stor5.length] = 0
        stor36B6[stor5.length] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            idx = 0
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (4 * ceil32(return_data.size)) + 640
            while (4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640 > idx:
                address(stor[s + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
            while stor36B6[stor5.length] > idx:
                uint256(stor[idx + sha3((11 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3dba)]) = 0
                idx = idx + 1
                continue 
        mem[(4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640] = 32
        idx = 0
        s = (4 * ceil32(return_data.size)) + 640
        t = (4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x322a1185: 32, sub_58ba1bb8.length, 0, 0, 1, address(arg2), msg.sender, 0, 0, 0, 0, block.timestamp + arg3, address(arg1), 0, 448, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152 len 32 * ext_call.return_data[0]]
    return sub_58ba1bb8.length
}

function removeToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    mem[132] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.0x91006745 with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 16
    mem[ceil32(return_data.size) + 128] = 0xfe5045524d4953494f4e2044454e494544000000000000000000000000000000
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    mem[0] = arg1
    mem[32] = 6
    stor6[address(arg1)] = 0
    mem[64] = ceil32(return_data.size) + (32 * tokens.length) + 192
    mem[ceil32(return_data.size) + 160] = tokens.length
    if not tokens.length:
        idx = 0
        while idx < tokens.length:
            if idx >= tokens.length:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(return_data.size) + 204 len 20] != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[64] = ceil32(return_data.size) + (64 * tokens.length) + 224
            mem[ceil32(return_data.size) + (32 * tokens.length) + 192] = tokens.length
            if not tokens.length:
                idx = 0
                while idx < tokens.length:
                    if idx >= tokens.length:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20] != arg1:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= tokens.length:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                    if var56001 < 1:
                        revert with 0, 17
                    if var60002 < var60001:
                        if 1 > !var64002:
                            revert with 0, 17
                        idx = var66003 + 1
                        s = var66006
                        while idx < tokens.length:
                            if s >= tokens.length:
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * tokens.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if tokens.length < 1:
                                revert with 0, 17
                            if s + 1 < tokens.length - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if tokens.length < 1:
                                revert with 0, 17
                            if tokens.length - 1 >= tokens.length:
                                revert with 0, 50
                            mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                            if not tokens.length:
                                idx = sha3(3)
                                while sha3(3) + tokens.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(3)
                                idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                                while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                                while sha3(3) + tokens.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not tokens.length:
                                revert with 0, 49
                            address(tokens[tokens.length].field_0) = 0
                            tokens.length--
                        revert with 0, 50
                    if tokens.length < 1:
                        revert with 0, 17
                    if tokens.length - 1 >= tokens.length:
                        revert with 0, 50
                    mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                    if not tokens.length:
                        idx = sha3(3)
                        while sha3(3) + tokens.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(3)
                        idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                        while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                            address(stor[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                        while sha3(3) + tokens.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    if not tokens.length:
                        revert with 0, 49
                    address(tokens[tokens.length].field_0) = 0
                    tokens.length--
                if var52001 < 1:
                    revert with 0, 17
                if var56002 < var56001:
                    if 1 > !var60002:
                        revert with 0, 17
                    idx = var62003 + 1
                    s = var62006
                    while idx < tokens.length:
                        if s >= tokens.length:
                            revert with 0, 50
                        mem[(32 * s) + ceil32(return_data.size) + (32 * tokens.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20]
                        if s == -1:
                            revert with 0, 17
                        if tokens.length < 1:
                            revert with 0, 17
                        if s + 1 < tokens.length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if tokens.length < 1:
                            revert with 0, 17
                        if tokens.length - 1 >= tokens.length:
                            revert with 0, 50
                        mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                        if not tokens.length:
                            idx = sha3(3)
                            while sha3(3) + tokens.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(3)
                            idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                            while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                            while sha3(3) + tokens.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not tokens.length:
                            revert with 0, 49
                        address(tokens[tokens.length].field_0) = 0
                        tokens.length--
                    revert with 0, 50
            else:
                mem[0] = 3
                mem[ceil32(return_data.size) + (32 * tokens.length) + 224] = address(tokens.field_0)
                idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                s = sha3(3)
                while ceil32(return_data.size) + (64 * tokens.length) + 192 > idx:
                    mem[idx + 32] = stor1[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                while idx < tokens.length:
                    if idx >= tokens.length:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20] != arg1:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= tokens.length:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                    if var60001 < 1:
                        revert with 0, 17
                    if var64002 < var64001:
                        if 1 > !var68002:
                            revert with 0, 17
                        idx = var70003 + 1
                        s = var70006
                        while idx < tokens.length:
                            if s >= tokens.length:
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * tokens.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if tokens.length < 1:
                                revert with 0, 17
                            if s + 1 < tokens.length - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if tokens.length < 1:
                                revert with 0, 17
                            if tokens.length - 1 >= tokens.length:
                                revert with 0, 50
                            mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                            if not tokens.length:
                                idx = sha3(3)
                                while sha3(3) + tokens.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(3)
                                idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                                while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                                while sha3(3) + tokens.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not tokens.length:
                                revert with 0, 49
                            address(tokens[tokens.length].field_0) = 0
                            tokens.length--
                        revert with 0, 50
                    if tokens.length < 1:
                        revert with 0, 17
                    if tokens.length - 1 >= tokens.length:
                        revert with 0, 50
                    mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                    if not tokens.length:
                        idx = sha3(3)
                        while sha3(3) + tokens.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(3)
                        idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                        while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                            address(stor[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                        while sha3(3) + tokens.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    if not tokens.length:
                        revert with 0, 49
                    address(tokens[tokens.length].field_0) = 0
                    tokens.length--
                if var56001 < 1:
                    revert with 0, 17
                if var60002 < var60001:
                    if 1 > !var64002:
                        revert with 0, 17
                    idx = var66003 + 1
                    s = var66006
                    while idx < tokens.length:
                        if s >= tokens.length:
                            revert with 0, 50
                        mem[(32 * s) + ceil32(return_data.size) + (32 * tokens.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20]
                        if s == -1:
                            revert with 0, 17
                        if tokens.length < 1:
                            revert with 0, 17
                        if s + 1 < tokens.length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if tokens.length < 1:
                            revert with 0, 17
                        if tokens.length - 1 >= tokens.length:
                            revert with 0, 50
                        mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                        if not tokens.length:
                            idx = sha3(3)
                            while sha3(3) + tokens.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(3)
                            idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                            while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                            while sha3(3) + tokens.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not tokens.length:
                            revert with 0, 49
                        address(tokens[tokens.length].field_0) = 0
                        tokens.length--
                    revert with 0, 50
            if tokens.length < 1:
                revert with 0, 17
            if tokens.length - 1 >= tokens.length:
                revert with 0, 50
            mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
            if not tokens.length:
                idx = sha3(3)
                while sha3(3) + tokens.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(3)
                idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                    address(stor[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                while sha3(3) + tokens.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            if not tokens.length:
                revert with 0, 49
            address(tokens[tokens.length].field_0) = 0
            tokens.length--
    else:
        mem[0] = 3
        mem[ceil32(return_data.size) + 192] = address(tokens.field_0)
        idx = ceil32(return_data.size) + 192
        s = 0
        while ceil32(return_data.size) + (32 * tokens.length) + 160 > idx:
            mem[idx + 32] = address(tokens[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < tokens.length:
            if idx >= tokens.length:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(return_data.size) + 204 len 20] != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[64] = ceil32(return_data.size) + (64 * tokens.length) + 224
            mem[ceil32(return_data.size) + (32 * tokens.length) + 192] = tokens.length
            if not tokens.length:
                idx = 0
                while idx < tokens.length:
                    if idx >= tokens.length:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20] != arg1:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= tokens.length:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                    if var60001 < 1:
                        revert with 0, 17
                    if var64002 < var64001:
                        if 1 > !var68002:
                            revert with 0, 17
                        idx = var70003 + 1
                        s = var70006
                        while idx < tokens.length:
                            if s >= tokens.length:
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * tokens.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if tokens.length < 1:
                                revert with 0, 17
                            if s + 1 < tokens.length - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if tokens.length < 1:
                                revert with 0, 17
                            if tokens.length - 1 >= tokens.length:
                                revert with 0, 50
                            mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                            if not tokens.length:
                                idx = sha3(3)
                                while sha3(3) + tokens.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(3)
                                idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                                while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                                while sha3(3) + tokens.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not tokens.length:
                                revert with 0, 49
                            address(tokens[tokens.length].field_0) = 0
                            tokens.length--
                        revert with 0, 50
                    if tokens.length < 1:
                        revert with 0, 17
                    if tokens.length - 1 >= tokens.length:
                        revert with 0, 50
                    mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                    if not tokens.length:
                        idx = sha3(3)
                        while sha3(3) + tokens.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(3)
                        idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                        while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                            address(stor[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                        while sha3(3) + tokens.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    if not tokens.length:
                        revert with 0, 49
                    address(tokens[tokens.length].field_0) = 0
                    tokens.length--
                if var56001 < 1:
                    revert with 0, 17
                if var60002 < var60001:
                    if 1 > !var64002:
                        revert with 0, 17
                    idx = var66003 + 1
                    s = var66006
                    while idx < tokens.length:
                        if s >= tokens.length:
                            revert with 0, 50
                        mem[(32 * s) + ceil32(return_data.size) + (32 * tokens.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20]
                        if s == -1:
                            revert with 0, 17
                        if tokens.length < 1:
                            revert with 0, 17
                        if s + 1 < tokens.length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if tokens.length < 1:
                            revert with 0, 17
                        if tokens.length - 1 >= tokens.length:
                            revert with 0, 50
                        mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                        if not tokens.length:
                            idx = sha3(3)
                            while sha3(3) + tokens.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(3)
                            idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                            while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                            while sha3(3) + tokens.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not tokens.length:
                            revert with 0, 49
                        address(tokens[tokens.length].field_0) = 0
                        tokens.length--
                    revert with 0, 50
            else:
                mem[0] = 3
                mem[ceil32(return_data.size) + (32 * tokens.length) + 224] = address(tokens.field_0)
                idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                s = sha3(3)
                while ceil32(return_data.size) + (64 * tokens.length) + 192 > idx:
                    mem[idx + 32] = stor1[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                while idx < tokens.length:
                    if idx >= tokens.length:
                        revert with 0, 50
                    if mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20] != arg1:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= tokens.length:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                    if var64001 < 1:
                        revert with 0, 17
                    if var68002 < var68001:
                        if 1 > !var72002:
                            revert with 0, 17
                        idx = var74003 + 1
                        s = var74006
                        while idx < tokens.length:
                            if s >= tokens.length:
                                revert with 0, 50
                            mem[(32 * s) + ceil32(return_data.size) + (32 * tokens.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20]
                            if s == -1:
                                revert with 0, 17
                            if tokens.length < 1:
                                revert with 0, 17
                            if s + 1 < tokens.length - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if tokens.length < 1:
                                revert with 0, 17
                            if tokens.length - 1 >= tokens.length:
                                revert with 0, 50
                            mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                            if not tokens.length:
                                idx = sha3(3)
                                while sha3(3) + tokens.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(3)
                                idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                                while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                                while sha3(3) + tokens.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not tokens.length:
                                revert with 0, 49
                            address(tokens[tokens.length].field_0) = 0
                            tokens.length--
                        revert with 0, 50
                    if tokens.length < 1:
                        revert with 0, 17
                    if tokens.length - 1 >= tokens.length:
                        revert with 0, 50
                    mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                    if not tokens.length:
                        idx = sha3(3)
                        while sha3(3) + tokens.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(3)
                        idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                        while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                            address(stor[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                        while sha3(3) + tokens.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                    if not tokens.length:
                        revert with 0, 49
                    address(tokens[tokens.length].field_0) = 0
                    tokens.length--
                if var60001 < 1:
                    revert with 0, 17
                if var64002 < var64001:
                    if 1 > !var68002:
                        revert with 0, 17
                    idx = var70003 + 1
                    s = var70006
                    while idx < tokens.length:
                        if s >= tokens.length:
                            revert with 0, 50
                        mem[(32 * s) + ceil32(return_data.size) + (32 * tokens.length) + 224] = mem[(32 * idx) + ceil32(return_data.size) + (32 * tokens.length) + 236 len 20]
                        if s == -1:
                            revert with 0, 17
                        if tokens.length < 1:
                            revert with 0, 17
                        if s + 1 < tokens.length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if tokens.length < 1:
                            revert with 0, 17
                        if tokens.length - 1 >= tokens.length:
                            revert with 0, 50
                        mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
                        if not tokens.length:
                            idx = sha3(3)
                            while sha3(3) + tokens.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3(3)
                            idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                            while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                                address(stor[s]) = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                            while sha3(3) + tokens.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        if not tokens.length:
                            revert with 0, 49
                        address(tokens[tokens.length].field_0) = 0
                        tokens.length--
                    revert with 0, 50
            if tokens.length < 1:
                revert with 0, 17
            if tokens.length - 1 >= tokens.length:
                revert with 0, 50
            mem[(32 * tokens.length - 1) + ceil32(return_data.size) + (32 * tokens.length) + 224] = 0
            if not tokens.length:
                idx = sha3(3)
                while sha3(3) + tokens.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(3)
                idx = ceil32(return_data.size) + (32 * tokens.length) + 224
                while ceil32(return_data.size) + (64 * tokens.length) + 224 > idx:
                    address(stor[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(3) + (Mask(251, 0, (32 * tokens.length) + 31) >> 5)
                while sha3(3) + tokens.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            if not tokens.length:
                revert with 0, 49
            address(tokens[tokens.length].field_0) = 0
            tokens.length--
}

function sub_a4492009(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    mem[100] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.0xf3caad03 with:
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
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint8(sub_58ba1bb8[arg1].field_272) > 4:
        revert with 0, 33
    mem[ceil32(return_data.size) + 160] = 15
    mem[ceil32(return_data.size) + 192] = 0x5459504520564f5445204552524f520000000000000000000000000000000000
    if uint8(sub_58ba1bb8[arg1].field_272) != 1:
        revert with 0, '', 0
    if uint8(sub_60c8b28d[arg1][address(msg.sender)].field_0):
        revert with 0, 'ALR VOTED'
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint8(sub_58ba1bb8[arg1].field_256):
        revert with 0, 'PRP EXP'
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if block.timestamp >= uint256(sub_58ba1bb8[arg1].field_1792):
        revert with 0, 'EXPIRED'
    mem[ceil32(return_data.size) + 224] = 1
    mem[ceil32(return_data.size) + 256] = bool(arg2)
    uint8(sub_60c8b28d[arg1][msg.sender].field_0) = 1
    Mask(248, 0, sub_60c8b28d[arg1][msg.sender].field_8) = Mask(248, 0, bool(arg2))
    Mask(240, 0, sub_60c8b28d[arg1][msg.sender].field_16) = 0
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint256(sub_58ba1bb8[arg1].field_768) > -2:
        revert with 0, 17
    uint256(sub_58ba1bb8[arg1].field_768)++
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    uint256(sub_58ba1bb8[arg1].field_2560)++
    uint256(stor[sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 5) + 10) + uint256(sub_58ba1bb8[arg1].field_2560)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((11 * arg1) + ('name', 'sub_58ba1bb8', 5) + 10) + uint256(sub_58ba1bb8[arg1].field_2560)].field_0))
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if not arg2:
        if uint256(sub_58ba1bb8[arg1].field_1280) > -2:
            revert with 0, 17
        uint256(sub_58ba1bb8[arg1].field_1280)++
    else:
        if uint256(sub_58ba1bb8[arg1].field_1024) > -2:
            revert with 0, 17
        uint256(sub_58ba1bb8[arg1].field_1024)++
    require ext_code.size(stor2)
    staticcall stor2.0x2f2b31db with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if arg1 >= sub_58ba1bb8.length:
        revert with 0, 50
    if uint256(sub_58ba1bb8[arg1].field_768) <= ext_call.return_data[0] / 2:
        if uint8(sub_58ba1bb8[arg1].field_256):
            if arg1 >= sub_58ba1bb8.length:
                revert with 0, 50
            if uint8(sub_58ba1bb8[arg1].field_1536) > 2:
                revert with 0, 33
            if uint8(sub_58ba1bb8[arg1].field_1536) == 1:
                if arg1 >= sub_58ba1bb8.length:
                    revert with 0, 50
                if uint8(sub_58ba1bb8[arg1].field_264) > 1:
                    revert with 0, 33
                if not uint8(sub_58ba1bb8[arg1].field_264):
                    if arg1 >= sub_58ba1bb8.length:
                        revert with 0, 50
                    require ext_code.size(address(sub_58ba1bb8[arg1].field_2048))
                    call address(sub_58ba1bb8[arg1].field_2048).0xfdc435af with:
                         gas gas_remaining wei
                        args address(sub_58ba1bb8[arg1].field_280)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 >= sub_58ba1bb8.length:
                        revert with 0, 50
                    mem[0] = address(sub_58ba1bb8[arg1].field_2048)
                    mem[32] = 7
                    stor7[address(stor5[arg1].field_2048)] = 0
                    mem[(2 * ceil32(return_data.size)) + 292] = address(sub_58ba1bb8[arg1].field_2048)
                    require ext_code.size(stor2)
                    call stor2.0xd5b6925 with:
                         gas gas_remaining wei
                        args address(sub_58ba1bb8[arg1].field_2048)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * cities.length) + 320
                    mem[(2 * ceil32(return_data.size)) + 288] = cities.length
                    if not cities.length:
                        idx = 0
                        while idx < cities.length:
                            if idx >= cities.length:
                                revert with 0, 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                            if not cities.length:
                                idx = 0
                                while idx < cities.length:
                                    if idx >= cities.length:
                                        revert with 0, 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if idx >= cities.length:
                                        revert with 0, 50
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                    if var107001 < 1:
                                        revert with 0, 17
                                    if var111002 < var111001:
                                        if 1 > !var115002:
                                            revert with 0, 17
                                        idx = var117003 + 1
                                        s = var117006
                                        while idx < cities.length:
                                            if s >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                            if s == -1:
                                                revert with 0, 17
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if s + 1 < cities.length - 1:
                                                if 1 > !(s + 1):
                                                    revert with 0, 17
                                                idx = s + 2
                                                s = s + 1
                                                continue 
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        revert with 0, 50
                                    if cities.length < 1:
                                        revert with 0, 17
                                    if cities.length - 1 >= cities.length:
                                        revert with 0, 50
                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                    if not cities.length:
                                        idx = sha3(4)
                                        while sha3(4) + cities.length > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(4)
                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                        while sha3(4) + cities.length > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not cities.length:
                                        revert with 0, 49
                                    address(cities[cities.length].field_0) = 0
                                    cities.length--
                                if var103001 < 1:
                                    revert with 0, 17
                                if var107002 < var107001:
                                    if 1 > !var111002:
                                        revert with 0, 17
                                    idx = var113003 + 1
                                    s = var113006
                                    while idx < cities.length:
                                        if s >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                        if s == -1:
                                            revert with 0, 17
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if s + 1 < cities.length - 1:
                                            if 1 > !(s + 1):
                                                revert with 0, 17
                                            idx = s + 2
                                            s = s + 1
                                            continue 
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
                                    revert with 0, 50
                            else:
                                mem[0] = 4
                                mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                if (32 * cities.length) + 32 <= 64:
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if var108001 < 1:
                                            revert with 0, 17
                                        if var112002 < var112001:
                                            if 1 > !var116002:
                                                revert with 0, 17
                                            idx = var118003 + 1
                                            s = var118006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
                                    if var104001 < 1:
                                        revert with 0, 17
                                    if var108002 < var108001:
                                        if 1 > !var112002:
                                            revert with 0, 17
                                        idx = var114003 + 1
                                        s = var114006
                                        while idx < cities.length:
                                            if s >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                            if s == -1:
                                                revert with 0, 17
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if s + 1 < cities.length - 1:
                                                if 1 > !(s + 1):
                                                    revert with 0, 17
                                                idx = s + 2
                                                s = s + 1
                                                continue 
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        revert with 0, 50
                                else:
                                    mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                    s = sha3(4) + 1
                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                        mem[idx + 32] = stor1[s]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if var111001 < 1:
                                            revert with 0, 17
                                        if var115002 < var115001:
                                            if 1 > !var119002:
                                                revert with 0, 17
                                            idx = var121003 + 1
                                            s = var121006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
                                    if var107001 < 1:
                                        revert with 0, 17
                                    if var111002 < var111001:
                                        if 1 > !var115002:
                                            revert with 0, 17
                                        idx = var117003 + 1
                                        s = var117006
                                        while idx < cities.length:
                                            if s >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                            if s == -1:
                                                revert with 0, 17
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if s + 1 < cities.length - 1:
                                                if 1 > !(s + 1):
                                                    revert with 0, 17
                                                idx = s + 2
                                                s = s + 1
                                                continue 
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        revert with 0, 50
                            if cities.length < 1:
                                revert with 0, 17
                            if cities.length - 1 >= cities.length:
                                revert with 0, 50
                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                            if not cities.length:
                                idx = sha3(4)
                                while sha3(4) + cities.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = sha3(4)
                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                    address(stor[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                while sha3(4) + cities.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            if not cities.length:
                                revert with 0, 49
                            address(cities[cities.length].field_0) = 0
                            cities.length--
                    else:
                        mem[0] = 4
                        mem[(2 * ceil32(return_data.size)) + 320] = address(cities.field_0)
                        if (32 * cities.length) + 32 <= 64:
                            idx = 0
                            while idx < cities.length:
                                if idx >= cities.length:
                                    revert with 0, 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                if not cities.length:
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if var108001 < 1:
                                            revert with 0, 17
                                        if var112002 < var112001:
                                            if 1 > !var116002:
                                                revert with 0, 17
                                            idx = var118003 + 1
                                            s = var118006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
                                    if var104001 < 1:
                                        revert with 0, 17
                                    if var108002 < var108001:
                                        if 1 > !var112002:
                                            revert with 0, 17
                                        idx = var114003 + 1
                                        s = var114006
                                        while idx < cities.length:
                                            if s >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                            if s == -1:
                                                revert with 0, 17
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if s + 1 < cities.length - 1:
                                                if 1 > !(s + 1):
                                                    revert with 0, 17
                                                idx = s + 2
                                                s = s + 1
                                                continue 
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        revert with 0, 50
                                else:
                                    mem[0] = 4
                                    mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                    if (32 * cities.length) + 32 <= 64:
                                        idx = 0
                                        while idx < cities.length:
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if var109001 < 1:
                                                revert with 0, 17
                                            if var113002 < var113001:
                                                if 1 > !var117002:
                                                    revert with 0, 17
                                                idx = var119003 + 1
                                                s = var119006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        if var105001 < 1:
                                            revert with 0, 17
                                        if var109002 < var109001:
                                            if 1 > !var113002:
                                                revert with 0, 17
                                            idx = var115003 + 1
                                            s = var115006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                        s = sha3(4) + 1
                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                            mem[idx + 32] = stor1[s]
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        idx = 0
                                        while idx < cities.length:
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if var112001 < 1:
                                                revert with 0, 17
                                            if var116002 < var116001:
                                                if 1 > !var120002:
                                                    revert with 0, 17
                                                idx = var122003 + 1
                                                s = var122006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        if var108001 < 1:
                                            revert with 0, 17
                                        if var112002 < var112001:
                                            if 1 > !var116002:
                                                revert with 0, 17
                                            idx = var118003 + 1
                                            s = var118006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                if cities.length < 1:
                                    revert with 0, 17
                                if cities.length - 1 >= cities.length:
                                    revert with 0, 50
                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                if not cities.length:
                                    idx = sha3(4)
                                    while sha3(4) + cities.length > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(4)
                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                    while sha3(4) + cities.length > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not cities.length:
                                    revert with 0, 49
                                address(cities[cities.length].field_0) = 0
                                cities.length--
                        else:
                            mem[(2 * ceil32(return_data.size)) + 352] = address(cities.field_256)
                            idx = (2 * ceil32(return_data.size)) + 352
                            s = 1
                            while (2 * ceil32(return_data.size)) + (32 * cities.length) + 288 > idx:
                                mem[idx + 32] = address(cities[s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            idx = 0
                            while idx < cities.length:
                                if idx >= cities.length:
                                    revert with 0, 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                if not cities.length:
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if var111001 < 1:
                                            revert with 0, 17
                                        if var115002 < var115001:
                                            if 1 > !var119002:
                                                revert with 0, 17
                                            idx = var121003 + 1
                                            s = var121006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
                                    if var107001 < 1:
                                        revert with 0, 17
                                    if var111002 < var111001:
                                        if 1 > !var115002:
                                            revert with 0, 17
                                        idx = var117003 + 1
                                        s = var117006
                                        while idx < cities.length:
                                            if s >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                            if s == -1:
                                                revert with 0, 17
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if s + 1 < cities.length - 1:
                                                if 1 > !(s + 1):
                                                    revert with 0, 17
                                                idx = s + 2
                                                s = s + 1
                                                continue 
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        revert with 0, 50
                                else:
                                    mem[0] = 4
                                    mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                    if (32 * cities.length) + 32 <= 64:
                                        idx = 0
                                        while idx < cities.length:
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if var112001 < 1:
                                                revert with 0, 17
                                            if var116002 < var116001:
                                                if 1 > !var120002:
                                                    revert with 0, 17
                                                idx = var122003 + 1
                                                s = var122006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        if var108001 < 1:
                                            revert with 0, 17
                                        if var112002 < var112001:
                                            if 1 > !var116002:
                                                revert with 0, 17
                                            idx = var118003 + 1
                                            s = var118006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                        s = sha3(4) + 1
                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                            mem[idx + 32] = stor1[s]
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        idx = 0
                                        while idx < cities.length:
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if var115001 < 1:
                                                revert with 0, 17
                                            if var119002 < var119001:
                                                if 1 > !var123002:
                                                    revert with 0, 17
                                                idx = var125003 + 1
                                                s = var125006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        if var111001 < 1:
                                            revert with 0, 17
                                        if var115002 < var115001:
                                            if 1 > !var119002:
                                                revert with 0, 17
                                            idx = var121003 + 1
                                            s = var121006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                if cities.length < 1:
                                    revert with 0, 17
                                if cities.length - 1 >= cities.length:
                                    revert with 0, 50
                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                if not cities.length:
                                    idx = sha3(4)
                                    while sha3(4) + cities.length > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = sha3(4)
                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                        address(stor[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                    while sha3(4) + cities.length > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                if not cities.length:
                                    revert with 0, 49
                                address(cities[cities.length].field_0) = 0
                                cities.length--
    else:
        if arg1 >= sub_58ba1bb8.length:
            revert with 0, 50
        if uint256(sub_58ba1bb8[arg1].field_1024) <= uint256(sub_58ba1bb8[arg1].field_1280):
            if arg1 >= sub_58ba1bb8.length:
                revert with 0, 50
            if uint256(sub_58ba1bb8[arg1].field_1024) > uint256(sub_58ba1bb8[arg1].field_1280):
                uint8(sub_58ba1bb8[arg1].field_256) = 1
                if uint8(sub_58ba1bb8[arg1].field_256):
                    if arg1 >= sub_58ba1bb8.length:
                        revert with 0, 50
                    if uint8(sub_58ba1bb8[arg1].field_1536) > 2:
                        revert with 0, 33
                    if uint8(sub_58ba1bb8[arg1].field_1536) == 1:
                        if arg1 >= sub_58ba1bb8.length:
                            revert with 0, 50
                        if uint8(sub_58ba1bb8[arg1].field_264) > 1:
                            revert with 0, 33
                        if not uint8(sub_58ba1bb8[arg1].field_264):
                            if arg1 >= sub_58ba1bb8.length:
                                revert with 0, 50
                            require ext_code.size(address(sub_58ba1bb8[arg1].field_2048))
                            call address(sub_58ba1bb8[arg1].field_2048).0xfdc435af with:
                                 gas gas_remaining wei
                                args address(sub_58ba1bb8[arg1].field_280)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 >= sub_58ba1bb8.length:
                                revert with 0, 50
                            mem[0] = address(sub_58ba1bb8[arg1].field_2048)
                            mem[32] = 7
                            stor7[address(stor5[arg1].field_2048)] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = address(sub_58ba1bb8[arg1].field_2048)
                            require ext_code.size(stor2)
                            call stor2.0xd5b6925 with:
                                 gas gas_remaining wei
                                args address(sub_58ba1bb8[arg1].field_2048)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + (32 * cities.length) + 320
                            mem[(2 * ceil32(return_data.size)) + 288] = cities.length
                            if not cities.length:
                                idx = 0
                                while idx < cities.length:
                                    if idx >= cities.length:
                                        revert with 0, 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                    mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                    if not cities.length:
                                        idx = 0
                                        while idx < cities.length:
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if var115001 < 1:
                                                revert with 0, 17
                                            if var119002 < var119001:
                                                if 1 > !var123002:
                                                    revert with 0, 17
                                                idx = var125003 + 1
                                                s = var125006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        if var111001 < 1:
                                            revert with 0, 17
                                        if var115002 < var115001:
                                            if 1 > !var119002:
                                                revert with 0, 17
                                            idx = var121003 + 1
                                            s = var121006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                    else:
                                        mem[0] = 4
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                        if (32 * cities.length) + 32 <= 64:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var116001 < 1:
                                                    revert with 0, 17
                                                if var120002 < var120001:
                                                    if 1 > !var124002:
                                                        revert with 0, 17
                                                    idx = var126003 + 1
                                                    s = var126006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var112001 < 1:
                                                revert with 0, 17
                                            if var116002 < var116001:
                                                if 1 > !var120002:
                                                    revert with 0, 17
                                                idx = var122003 + 1
                                                s = var122006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                            s = sha3(4) + 1
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                mem[idx + 32] = stor1[s]
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var115001 < 1:
                                                revert with 0, 17
                                            if var119002 < var119001:
                                                if 1 > !var123002:
                                                    revert with 0, 17
                                                idx = var125003 + 1
                                                s = var125006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                    if cities.length < 1:
                                        revert with 0, 17
                                    if cities.length - 1 >= cities.length:
                                        revert with 0, 50
                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                    if not cities.length:
                                        idx = sha3(4)
                                        while sha3(4) + cities.length > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(4)
                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                        while sha3(4) + cities.length > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not cities.length:
                                        revert with 0, 49
                                    address(cities[cities.length].field_0) = 0
                                    cities.length--
                            else:
                                mem[0] = 4
                                mem[(2 * ceil32(return_data.size)) + 320] = address(cities.field_0)
                                if (32 * cities.length) + 32 <= 64:
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                        if not cities.length:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var116001 < 1:
                                                    revert with 0, 17
                                                if var120002 < var120001:
                                                    if 1 > !var124002:
                                                        revert with 0, 17
                                                    idx = var126003 + 1
                                                    s = var126006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var112001 < 1:
                                                revert with 0, 17
                                            if var116002 < var116001:
                                                if 1 > !var120002:
                                                    revert with 0, 17
                                                idx = var122003 + 1
                                                s = var122006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[0] = 4
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                            if (32 * cities.length) + 32 <= 64:
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var117001 < 1:
                                                        revert with 0, 17
                                                    if var121002 < var121001:
                                                        if 1 > !var125002:
                                                            revert with 0, 17
                                                        idx = var127003 + 1
                                                        s = var127006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var113001 < 1:
                                                    revert with 0, 17
                                                if var117002 < var117001:
                                                    if 1 > !var121002:
                                                        revert with 0, 17
                                                    idx = var123003 + 1
                                                    s = var123006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                                s = sha3(4) + 1
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                    mem[idx + 32] = stor1[s]
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var120001 < 1:
                                                        revert with 0, 17
                                                    if var124002 < var124001:
                                                        if 1 > !var128002:
                                                            revert with 0, 17
                                                        idx = var130003 + 1
                                                        s = var130006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var116001 < 1:
                                                    revert with 0, 17
                                                if var120002 < var120001:
                                                    if 1 > !var124002:
                                                        revert with 0, 17
                                                    idx = var126003 + 1
                                                    s = var126006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cities.field_256)
                                    idx = (2 * ceil32(return_data.size)) + 352
                                    s = 1
                                    while (2 * ceil32(return_data.size)) + (32 * cities.length) + 288 > idx:
                                        mem[idx + 32] = address(cities[s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                        if not cities.length:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var115001 < 1:
                                                revert with 0, 17
                                            if var119002 < var119001:
                                                if 1 > !var123002:
                                                    revert with 0, 17
                                                idx = var125003 + 1
                                                s = var125006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[0] = 4
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                            if (32 * cities.length) + 32 <= 64:
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var120001 < 1:
                                                        revert with 0, 17
                                                    if var124002 < var124001:
                                                        if 1 > !var128002:
                                                            revert with 0, 17
                                                        idx = var130003 + 1
                                                        s = var130006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var116001 < 1:
                                                    revert with 0, 17
                                                if var120002 < var120001:
                                                    if 1 > !var124002:
                                                        revert with 0, 17
                                                    idx = var126003 + 1
                                                    s = var126006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                                s = sha3(4) + 1
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                    mem[idx + 32] = stor1[s]
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var123001 < 1:
                                                        revert with 0, 17
                                                    if var127002 < var127001:
                                                        if 1 > !var131002:
                                                            revert with 0, 17
                                                        idx = var133003 + 1
                                                        s = var133006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
            else:
                uint8(sub_58ba1bb8[arg1].field_1536) = 2
                if arg1 >= sub_58ba1bb8.length:
                    revert with 0, 50
                uint8(sub_58ba1bb8[arg1].field_256) = 1
                if uint8(sub_58ba1bb8[arg1].field_256):
                    if arg1 >= sub_58ba1bb8.length:
                        revert with 0, 50
                    if uint8(sub_58ba1bb8[arg1].field_1536) > 2:
                        revert with 0, 33
                    if uint8(sub_58ba1bb8[arg1].field_1536) == 1:
                        if arg1 >= sub_58ba1bb8.length:
                            revert with 0, 50
                        if uint8(sub_58ba1bb8[arg1].field_264) > 1:
                            revert with 0, 33
                        if not uint8(sub_58ba1bb8[arg1].field_264):
                            if arg1 >= sub_58ba1bb8.length:
                                revert with 0, 50
                            require ext_code.size(address(sub_58ba1bb8[arg1].field_2048))
                            call address(sub_58ba1bb8[arg1].field_2048).0xfdc435af with:
                                 gas gas_remaining wei
                                args address(sub_58ba1bb8[arg1].field_280)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 >= sub_58ba1bb8.length:
                                revert with 0, 50
                            mem[0] = address(sub_58ba1bb8[arg1].field_2048)
                            mem[32] = 7
                            stor7[address(stor5[arg1].field_2048)] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = address(sub_58ba1bb8[arg1].field_2048)
                            require ext_code.size(stor2)
                            call stor2.0xd5b6925 with:
                                 gas gas_remaining wei
                                args address(sub_58ba1bb8[arg1].field_2048)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + (32 * cities.length) + 320
                            mem[(2 * ceil32(return_data.size)) + 288] = cities.length
                            if not cities.length:
                                idx = 0
                                while idx < cities.length:
                                    if idx >= cities.length:
                                        revert with 0, 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                    mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                    if not cities.length:
                                        idx = 0
                                        while idx < cities.length:
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if var118001 < 1:
                                                revert with 0, 17
                                            if var122002 < var122001:
                                                if 1 > !var126002:
                                                    revert with 0, 17
                                                idx = var128003 + 1
                                                s = var128006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        if var114001 < 1:
                                            revert with 0, 17
                                        if var118002 < var118001:
                                            if 1 > !var122002:
                                                revert with 0, 17
                                            idx = var124003 + 1
                                            s = var124006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                    else:
                                        mem[0] = 4
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                        if (32 * cities.length) + 32 <= 64:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var115001 < 1:
                                                revert with 0, 17
                                            if var119002 < var119001:
                                                if 1 > !var123002:
                                                    revert with 0, 17
                                                idx = var125003 + 1
                                                s = var125006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                            s = sha3(4) + 1
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                mem[idx + 32] = stor1[s]
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var122001 < 1:
                                                    revert with 0, 17
                                                if var126002 < var126001:
                                                    if 1 > !var130002:
                                                        revert with 0, 17
                                                    idx = var132003 + 1
                                                    s = var132006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var118001 < 1:
                                                revert with 0, 17
                                            if var122002 < var122001:
                                                if 1 > !var126002:
                                                    revert with 0, 17
                                                idx = var128003 + 1
                                                s = var128006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                    if cities.length < 1:
                                        revert with 0, 17
                                    if cities.length - 1 >= cities.length:
                                        revert with 0, 50
                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                    if not cities.length:
                                        idx = sha3(4)
                                        while sha3(4) + cities.length > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(4)
                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                        while sha3(4) + cities.length > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not cities.length:
                                        revert with 0, 49
                                    address(cities[cities.length].field_0) = 0
                                    cities.length--
                            else:
                                mem[0] = 4
                                mem[(2 * ceil32(return_data.size)) + 320] = address(cities.field_0)
                                if (32 * cities.length) + 32 <= 64:
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                        if not cities.length:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var115001 < 1:
                                                revert with 0, 17
                                            if var119002 < var119001:
                                                if 1 > !var123002:
                                                    revert with 0, 17
                                                idx = var125003 + 1
                                                s = var125006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[0] = 4
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                            if (32 * cities.length) + 32 <= 64:
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var120001 < 1:
                                                        revert with 0, 17
                                                    if var124002 < var124001:
                                                        if 1 > !var128002:
                                                            revert with 0, 17
                                                        idx = var130003 + 1
                                                        s = var130006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var116001 < 1:
                                                    revert with 0, 17
                                                if var120002 < var120001:
                                                    if 1 > !var124002:
                                                        revert with 0, 17
                                                    idx = var126003 + 1
                                                    s = var126006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                                s = sha3(4) + 1
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                    mem[idx + 32] = stor1[s]
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var123001 < 1:
                                                        revert with 0, 17
                                                    if var127002 < var127001:
                                                        if 1 > !var131002:
                                                            revert with 0, 17
                                                        idx = var133003 + 1
                                                        s = var133006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cities.field_256)
                                    idx = (2 * ceil32(return_data.size)) + 352
                                    s = 1
                                    while (2 * ceil32(return_data.size)) + (32 * cities.length) + 288 > idx:
                                        mem[idx + 32] = address(cities[s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                        if not cities.length:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var122001 < 1:
                                                    revert with 0, 17
                                                if var126002 < var126001:
                                                    if 1 > !var130002:
                                                        revert with 0, 17
                                                    idx = var132003 + 1
                                                    s = var132006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var118001 < 1:
                                                revert with 0, 17
                                            if var122002 < var122001:
                                                if 1 > !var126002:
                                                    revert with 0, 17
                                                idx = var128003 + 1
                                                s = var128006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[0] = 4
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                            if (32 * cities.length) + 32 <= 64:
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var123001 < 1:
                                                        revert with 0, 17
                                                    if var127002 < var127001:
                                                        if 1 > !var131002:
                                                            revert with 0, 17
                                                        idx = var133003 + 1
                                                        s = var133006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                                s = sha3(4) + 1
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                    mem[idx + 32] = stor1[s]
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var126001 < 1:
                                                        revert with 0, 17
                                                    if var130002 < var130001:
                                                        if 1 > !var134002:
                                                            revert with 0, 17
                                                        idx = var136003 + 1
                                                        s = var136006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var122001 < 1:
                                                    revert with 0, 17
                                                if var126002 < var126001:
                                                    if 1 > !var130002:
                                                        revert with 0, 17
                                                    idx = var132003 + 1
                                                    s = var132006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
        else:
            uint8(sub_58ba1bb8[arg1].field_1536) = 1
            if arg1 >= sub_58ba1bb8.length:
                revert with 0, 50
            if arg1 >= sub_58ba1bb8.length:
                revert with 0, 50
            if uint256(sub_58ba1bb8[arg1].field_1024) > uint256(sub_58ba1bb8[arg1].field_1280):
                uint8(sub_58ba1bb8[arg1].field_256) = 1
                if uint8(sub_58ba1bb8[arg1].field_256):
                    if arg1 >= sub_58ba1bb8.length:
                        revert with 0, 50
                    if uint8(sub_58ba1bb8[arg1].field_1536) > 2:
                        revert with 0, 33
                    if uint8(sub_58ba1bb8[arg1].field_1536) == 1:
                        if arg1 >= sub_58ba1bb8.length:
                            revert with 0, 50
                        if uint8(sub_58ba1bb8[arg1].field_264) > 1:
                            revert with 0, 33
                        if not uint8(sub_58ba1bb8[arg1].field_264):
                            if arg1 >= sub_58ba1bb8.length:
                                revert with 0, 50
                            require ext_code.size(address(sub_58ba1bb8[arg1].field_2048))
                            call address(sub_58ba1bb8[arg1].field_2048).0xfdc435af with:
                                 gas gas_remaining wei
                                args address(sub_58ba1bb8[arg1].field_280)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 >= sub_58ba1bb8.length:
                                revert with 0, 50
                            mem[0] = address(sub_58ba1bb8[arg1].field_2048)
                            mem[32] = 7
                            stor7[address(stor5[arg1].field_2048)] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = address(sub_58ba1bb8[arg1].field_2048)
                            require ext_code.size(stor2)
                            call stor2.0xd5b6925 with:
                                 gas gas_remaining wei
                                args address(sub_58ba1bb8[arg1].field_2048)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + (32 * cities.length) + 320
                            mem[(2 * ceil32(return_data.size)) + 288] = cities.length
                            if not cities.length:
                                idx = 0
                                while idx < cities.length:
                                    if idx >= cities.length:
                                        revert with 0, 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                    mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                    if not cities.length:
                                        idx = 0
                                        while idx < cities.length:
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if var118001 < 1:
                                                revert with 0, 17
                                            if var122002 < var122001:
                                                if 1 > !var126002:
                                                    revert with 0, 17
                                                idx = var128003 + 1
                                                s = var128006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        if var114001 < 1:
                                            revert with 0, 17
                                        if var118002 < var118001:
                                            if 1 > !var122002:
                                                revert with 0, 17
                                            idx = var124003 + 1
                                            s = var124006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                    else:
                                        mem[0] = 4
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                        if (32 * cities.length) + 32 <= 64:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var115001 < 1:
                                                revert with 0, 17
                                            if var119002 < var119001:
                                                if 1 > !var123002:
                                                    revert with 0, 17
                                                idx = var125003 + 1
                                                s = var125006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                            s = sha3(4) + 1
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                mem[idx + 32] = stor1[s]
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var122001 < 1:
                                                    revert with 0, 17
                                                if var126002 < var126001:
                                                    if 1 > !var130002:
                                                        revert with 0, 17
                                                    idx = var132003 + 1
                                                    s = var132006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var118001 < 1:
                                                revert with 0, 17
                                            if var122002 < var122001:
                                                if 1 > !var126002:
                                                    revert with 0, 17
                                                idx = var128003 + 1
                                                s = var128006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                    if cities.length < 1:
                                        revert with 0, 17
                                    if cities.length - 1 >= cities.length:
                                        revert with 0, 50
                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                    if not cities.length:
                                        idx = sha3(4)
                                        while sha3(4) + cities.length > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(4)
                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                        while sha3(4) + cities.length > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not cities.length:
                                        revert with 0, 49
                                    address(cities[cities.length].field_0) = 0
                                    cities.length--
                            else:
                                mem[0] = 4
                                mem[(2 * ceil32(return_data.size)) + 320] = address(cities.field_0)
                                if (32 * cities.length) + 32 <= 64:
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                        if not cities.length:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var115001 < 1:
                                                revert with 0, 17
                                            if var119002 < var119001:
                                                if 1 > !var123002:
                                                    revert with 0, 17
                                                idx = var125003 + 1
                                                s = var125006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[0] = 4
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                            if (32 * cities.length) + 32 <= 64:
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var120001 < 1:
                                                        revert with 0, 17
                                                    if var124002 < var124001:
                                                        if 1 > !var128002:
                                                            revert with 0, 17
                                                        idx = var130003 + 1
                                                        s = var130006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var116001 < 1:
                                                    revert with 0, 17
                                                if var120002 < var120001:
                                                    if 1 > !var124002:
                                                        revert with 0, 17
                                                    idx = var126003 + 1
                                                    s = var126006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                                s = sha3(4) + 1
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                    mem[idx + 32] = stor1[s]
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var123001 < 1:
                                                        revert with 0, 17
                                                    if var127002 < var127001:
                                                        if 1 > !var131002:
                                                            revert with 0, 17
                                                        idx = var133003 + 1
                                                        s = var133006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cities.field_256)
                                    idx = (2 * ceil32(return_data.size)) + 352
                                    s = 1
                                    while (2 * ceil32(return_data.size)) + (32 * cities.length) + 288 > idx:
                                        mem[idx + 32] = address(cities[s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                        if not cities.length:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var122001 < 1:
                                                    revert with 0, 17
                                                if var126002 < var126001:
                                                    if 1 > !var130002:
                                                        revert with 0, 17
                                                    idx = var132003 + 1
                                                    s = var132006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var118001 < 1:
                                                revert with 0, 17
                                            if var122002 < var122001:
                                                if 1 > !var126002:
                                                    revert with 0, 17
                                                idx = var128003 + 1
                                                s = var128006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[0] = 4
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                            if (32 * cities.length) + 32 <= 64:
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var123001 < 1:
                                                        revert with 0, 17
                                                    if var127002 < var127001:
                                                        if 1 > !var131002:
                                                            revert with 0, 17
                                                        idx = var133003 + 1
                                                        s = var133006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                                s = sha3(4) + 1
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                    mem[idx + 32] = stor1[s]
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var126001 < 1:
                                                        revert with 0, 17
                                                    if var130002 < var130001:
                                                        if 1 > !var134002:
                                                            revert with 0, 17
                                                        idx = var136003 + 1
                                                        s = var136006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var122001 < 1:
                                                    revert with 0, 17
                                                if var126002 < var126001:
                                                    if 1 > !var130002:
                                                        revert with 0, 17
                                                    idx = var132003 + 1
                                                    s = var132006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
            else:
                uint8(sub_58ba1bb8[arg1].field_1536) = 2
                if arg1 >= sub_58ba1bb8.length:
                    revert with 0, 50
                uint8(sub_58ba1bb8[arg1].field_256) = 1
                if uint8(sub_58ba1bb8[arg1].field_256):
                    if arg1 >= sub_58ba1bb8.length:
                        revert with 0, 50
                    if uint8(sub_58ba1bb8[arg1].field_1536) > 2:
                        revert with 0, 33
                    if uint8(sub_58ba1bb8[arg1].field_1536) == 1:
                        if arg1 >= sub_58ba1bb8.length:
                            revert with 0, 50
                        if uint8(sub_58ba1bb8[arg1].field_264) > 1:
                            revert with 0, 33
                        if not uint8(sub_58ba1bb8[arg1].field_264):
                            if arg1 >= sub_58ba1bb8.length:
                                revert with 0, 50
                            require ext_code.size(address(sub_58ba1bb8[arg1].field_2048))
                            call address(sub_58ba1bb8[arg1].field_2048).0xfdc435af with:
                                 gas gas_remaining wei
                                args address(sub_58ba1bb8[arg1].field_280)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 >= sub_58ba1bb8.length:
                                revert with 0, 50
                            mem[0] = address(sub_58ba1bb8[arg1].field_2048)
                            mem[32] = 7
                            stor7[address(stor5[arg1].field_2048)] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = address(sub_58ba1bb8[arg1].field_2048)
                            require ext_code.size(stor2)
                            call stor2.0xd5b6925 with:
                                 gas gas_remaining wei
                                args address(sub_58ba1bb8[arg1].field_2048)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + (32 * cities.length) + 320
                            mem[(2 * ceil32(return_data.size)) + 288] = cities.length
                            if not cities.length:
                                idx = 0
                                while idx < cities.length:
                                    if idx >= cities.length:
                                        revert with 0, 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                    mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                    if not cities.length:
                                        idx = 0
                                        while idx < cities.length:
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            if idx >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if var121001 < 1:
                                                revert with 0, 17
                                            if var125002 < var125001:
                                                if 1 > !var129002:
                                                    revert with 0, 17
                                                idx = var131003 + 1
                                                s = var131006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                            if cities.length < 1:
                                                revert with 0, 17
                                            if cities.length - 1 >= cities.length:
                                                revert with 0, 50
                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                            if not cities.length:
                                                idx = sha3(4)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = sha3(4)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                while sha3(4) + cities.length > idx:
                                                    uint256(stor[idx]) = 0
                                                    idx = idx + 1
                                                    continue 
                                            if not cities.length:
                                                revert with 0, 49
                                            address(cities[cities.length].field_0) = 0
                                            cities.length--
                                        if var117001 < 1:
                                            revert with 0, 17
                                        if var121002 < var121001:
                                            if 1 > !var125002:
                                                revert with 0, 17
                                            idx = var127003 + 1
                                            s = var127006
                                            while idx < cities.length:
                                                if s >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                if s == -1:
                                                    revert with 0, 17
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if s + 1 < cities.length - 1:
                                                    if 1 > !(s + 1):
                                                        revert with 0, 17
                                                    idx = s + 2
                                                    s = s + 1
                                                    continue 
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            revert with 0, 50
                                    else:
                                        mem[0] = 4
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                        if (32 * cities.length) + 32 <= 64:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var122001 < 1:
                                                    revert with 0, 17
                                                if var126002 < var126001:
                                                    if 1 > !var130002:
                                                        revert with 0, 17
                                                    idx = var132003 + 1
                                                    s = var132006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var118001 < 1:
                                                revert with 0, 17
                                            if var122002 < var122001:
                                                if 1 > !var126002:
                                                    revert with 0, 17
                                                idx = var128003 + 1
                                                s = var128006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                            s = sha3(4) + 1
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                mem[idx + 32] = stor1[s]
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var125001 < 1:
                                                    revert with 0, 17
                                                if var129002 < var129001:
                                                    if 1 > !var133002:
                                                        revert with 0, 17
                                                    idx = var135003 + 1
                                                    s = var135006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var121001 < 1:
                                                revert with 0, 17
                                            if var125002 < var125001:
                                                if 1 > !var129002:
                                                    revert with 0, 17
                                                idx = var131003 + 1
                                                s = var131006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                    if cities.length < 1:
                                        revert with 0, 17
                                    if cities.length - 1 >= cities.length:
                                        revert with 0, 50
                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                    if not cities.length:
                                        idx = sha3(4)
                                        while sha3(4) + cities.length > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = sha3(4)
                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                            address(stor[s]) = mem[idx + 12 len 20]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                        while sha3(4) + cities.length > idx:
                                            uint256(stor[idx]) = 0
                                            idx = idx + 1
                                            continue 
                                    if not cities.length:
                                        revert with 0, 49
                                    address(cities[cities.length].field_0) = 0
                                    cities.length--
                            else:
                                mem[0] = 4
                                mem[(2 * ceil32(return_data.size)) + 320] = address(cities.field_0)
                                if (32 * cities.length) + 32 <= 64:
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                        if not cities.length:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var122001 < 1:
                                                    revert with 0, 17
                                                if var126002 < var126001:
                                                    if 1 > !var130002:
                                                        revert with 0, 17
                                                    idx = var132003 + 1
                                                    s = var132006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var118001 < 1:
                                                revert with 0, 17
                                            if var122002 < var122001:
                                                if 1 > !var126002:
                                                    revert with 0, 17
                                                idx = var128003 + 1
                                                s = var128006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[0] = 4
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                            if (32 * cities.length) + 32 <= 64:
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var123001 < 1:
                                                        revert with 0, 17
                                                    if var127002 < var127001:
                                                        if 1 > !var131002:
                                                            revert with 0, 17
                                                        idx = var133003 + 1
                                                        s = var133006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var119001 < 1:
                                                    revert with 0, 17
                                                if var123002 < var123001:
                                                    if 1 > !var127002:
                                                        revert with 0, 17
                                                    idx = var129003 + 1
                                                    s = var129006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                                s = sha3(4) + 1
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                    mem[idx + 32] = stor1[s]
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var126001 < 1:
                                                        revert with 0, 17
                                                    if var130002 < var130001:
                                                        if 1 > !var134002:
                                                            revert with 0, 17
                                                        idx = var136003 + 1
                                                        s = var136006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var122001 < 1:
                                                    revert with 0, 17
                                                if var126002 < var126001:
                                                    if 1 > !var130002:
                                                        revert with 0, 17
                                                    idx = var132003 + 1
                                                    s = var132006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cities.field_256)
                                    idx = (2 * ceil32(return_data.size)) + 352
                                    s = 1
                                    while (2 * ceil32(return_data.size)) + (32 * cities.length) + 288 > idx:
                                        mem[idx + 32] = address(cities[s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    idx = 0
                                    while idx < cities.length:
                                        if idx >= cities.length:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 332 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        mem[64] = (2 * ceil32(return_data.size)) + (64 * cities.length) + 352
                                        mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 320] = cities.length
                                        if not cities.length:
                                            idx = 0
                                            while idx < cities.length:
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if var125001 < 1:
                                                    revert with 0, 17
                                                if var129002 < var129001:
                                                    if 1 > !var133002:
                                                        revert with 0, 17
                                                    idx = var135003 + 1
                                                    s = var135006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                                if cities.length < 1:
                                                    revert with 0, 17
                                                if cities.length - 1 >= cities.length:
                                                    revert with 0, 50
                                                mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                if not cities.length:
                                                    idx = sha3(4)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = sha3(4)
                                                    idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                    while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                        address(stor[s]) = mem[idx + 12 len 20]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                    while sha3(4) + cities.length > idx:
                                                        uint256(stor[idx]) = 0
                                                        idx = idx + 1
                                                        continue 
                                                if not cities.length:
                                                    revert with 0, 49
                                                address(cities[cities.length].field_0) = 0
                                                cities.length--
                                            if var121001 < 1:
                                                revert with 0, 17
                                            if var125002 < var125001:
                                                if 1 > !var129002:
                                                    revert with 0, 17
                                                idx = var131003 + 1
                                                s = var131006
                                                while idx < cities.length:
                                                    if s >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                    if s == -1:
                                                        revert with 0, 17
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if s + 1 < cities.length - 1:
                                                        if 1 > !(s + 1):
                                                            revert with 0, 17
                                                        idx = s + 2
                                                        s = s + 1
                                                        continue 
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                revert with 0, 50
                                        else:
                                            mem[0] = 4
                                            mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = address(cities.field_0)
                                            if (32 * cities.length) + 32 <= 64:
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var126001 < 1:
                                                        revert with 0, 17
                                                    if var130002 < var130001:
                                                        if 1 > !var134002:
                                                            revert with 0, 17
                                                        idx = var136003 + 1
                                                        s = var136006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var122001 < 1:
                                                    revert with 0, 17
                                                if var126002 < var126001:
                                                    if 1 > !var130002:
                                                        revert with 0, 17
                                                    idx = var132003 + 1
                                                    s = var132006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + (32 * cities.length) + 384] = address(cities.field_256)
                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 384
                                                s = sha3(4) + 1
                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 320 > idx:
                                                    mem[idx + 32] = stor1[s]
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                idx = 0
                                                while idx < cities.length:
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20] != address(sub_58ba1bb8[arg1].field_2048):
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    if idx >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if var129001 < 1:
                                                        revert with 0, 17
                                                    if var133002 < var133001:
                                                        if 1 > !var137002:
                                                            revert with 0, 17
                                                        idx = var139003 + 1
                                                        s = var139006
                                                        while idx < cities.length:
                                                            if s >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                            if s == -1:
                                                                revert with 0, 17
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if s + 1 < cities.length - 1:
                                                                if 1 > !(s + 1):
                                                                    revert with 0, 17
                                                                idx = s + 2
                                                                s = s + 1
                                                                continue 
                                                            if cities.length < 1:
                                                                revert with 0, 17
                                                            if cities.length - 1 >= cities.length:
                                                                revert with 0, 50
                                                            mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                            if not cities.length:
                                                                idx = sha3(4)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                s = sha3(4)
                                                                idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                                while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                    address(stor[s]) = mem[idx + 12 len 20]
                                                                    s = s + 1
                                                                    idx = idx + 32
                                                                    continue 
                                                                idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                                while sha3(4) + cities.length > idx:
                                                                    uint256(stor[idx]) = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                            if not cities.length:
                                                                revert with 0, 49
                                                            address(cities[cities.length].field_0) = 0
                                                            cities.length--
                                                        revert with 0, 50
                                                    if cities.length < 1:
                                                        revert with 0, 17
                                                    if cities.length - 1 >= cities.length:
                                                        revert with 0, 50
                                                    mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                    if not cities.length:
                                                        idx = sha3(4)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        s = sha3(4)
                                                        idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                        while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                            address(stor[s]) = mem[idx + 12 len 20]
                                                            s = s + 1
                                                            idx = idx + 32
                                                            continue 
                                                        idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                        while sha3(4) + cities.length > idx:
                                                            uint256(stor[idx]) = 0
                                                            idx = idx + 1
                                                            continue 
                                                    if not cities.length:
                                                        revert with 0, 49
                                                    address(cities[cities.length].field_0) = 0
                                                    cities.length--
                                                if var125001 < 1:
                                                    revert with 0, 17
                                                if var129002 < var129001:
                                                    if 1 > !var133002:
                                                        revert with 0, 17
                                                    idx = var135003 + 1
                                                    s = var135006
                                                    while idx < cities.length:
                                                        if s >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * s) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 364 len 20]
                                                        if s == -1:
                                                            revert with 0, 17
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if s + 1 < cities.length - 1:
                                                            if 1 > !(s + 1):
                                                                revert with 0, 17
                                                            idx = s + 2
                                                            s = s + 1
                                                            continue 
                                                        if cities.length < 1:
                                                            revert with 0, 17
                                                        if cities.length - 1 >= cities.length:
                                                            revert with 0, 50
                                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                                        if not cities.length:
                                                            idx = sha3(4)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            s = sha3(4)
                                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                                address(stor[s]) = mem[idx + 12 len 20]
                                                                s = s + 1
                                                                idx = idx + 32
                                                                continue 
                                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                                            while sha3(4) + cities.length > idx:
                                                                uint256(stor[idx]) = 0
                                                                idx = idx + 1
                                                                continue 
                                                        if not cities.length:
                                                            revert with 0, 49
                                                        address(cities[cities.length].field_0) = 0
                                                        cities.length--
                                                    revert with 0, 50
                                        if cities.length < 1:
                                            revert with 0, 17
                                        if cities.length - 1 >= cities.length:
                                            revert with 0, 50
                                        mem[(32 * cities.length - 1) + (2 * ceil32(return_data.size)) + (32 * cities.length) + 352] = 0
                                        if not cities.length:
                                            idx = sha3(4)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = sha3(4)
                                            idx = (2 * ceil32(return_data.size)) + (32 * cities.length) + 352
                                            while (2 * ceil32(return_data.size)) + (64 * cities.length) + 352 > idx:
                                                address(stor[s]) = mem[idx + 12 len 20]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = sha3(4) + (Mask(251, 0, (32 * cities.length) + 31) >> 5)
                                            while sha3(4) + cities.length > idx:
                                                uint256(stor[idx]) = 0
                                                idx = idx + 1
                                                continue 
                                        if not cities.length:
                                            revert with 0, 49
                                        address(cities[cities.length].field_0) = 0
                                        cities.length--
}



}
