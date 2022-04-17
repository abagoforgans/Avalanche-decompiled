contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_b870029cAddress;
address baseCurrencyAddress;
array of struct sub_e6318c1b;
mapping of struct sub_1c45389e;
mapping of struct sub_4cb89f33;
array of address stor68539412096397065356586712351047378110740926828376844291700787184847249528494;

function sub_1c45389e(?) payable {
    require calldata.size - 4 >= 32
    return sub_1c45389e[arg1].field_0
}

function sub_4cb89f33(?) payable {
    require calldata.size - 4 >= 32
    return sub_4cb89f33[arg1].field_0
}

function owner() payable {
    return owner
}

function baseCurrency() payable {
    return baseCurrencyAddress
}

function sub_b870029c(?) payable {
    return sub_b870029cAddress
}

function sub_e6318c1b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e6318c1b.length
    return sub_e6318c1b[arg1].field_0
}

function getBaseCurrency() payable {
    return baseCurrencyAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setup(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    sub_b870029cAddress = arg1
}

function setBaseCurrency(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'SBC: 1'
    baseCurrencyAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateCurrency(address arg1, uint128 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'UCR: 1'
    sub_4cb89f33[address(arg1)].field_0 = arg2
    sub_4cb89f33[address(arg1)].field_128 = 0
    emit 0xcc19bbf5: address(arg1), arg2, msg.sender
}

function getAllCurrencyRates() payable {
    require sub_e6318c1b.length <= test266151307()
    if sub_e6318c1b.length:
        mem[128 len 32 * sub_e6318c1b.length] = call.data[calldata.size len 32 * sub_e6318c1b.length]
    idx = 0
    while idx < sub_e6318c1b.length:
        mem[0] = sub_e6318c1b[idx].field_0
        mem[32] = 105
        require idx < sub_e6318c1b.length
        mem[(32 * idx) + 128] = sub_4cb89f33[stor103[idx].field_0].field_0
        idx = idx + 1
        continue 
    mem[(32 * sub_e6318c1b.length) + 192 len floor32(sub_e6318c1b.length)] = mem[128 len floor32(sub_e6318c1b.length)]
    return Array(len=sub_e6318c1b.length, data=mem[128 len floor32(sub_e6318c1b.length)], mem[(32 * sub_e6318c1b.length) + floor32(sub_e6318c1b.length) + 192 len (32 * sub_e6318c1b.length) - floor32(sub_e6318c1b.length)]), 
}

function getAllCurrencyArray() payable {
    if not sub_e6318c1b.length:
        mem[(32 * sub_e6318c1b.length) + 128] = 32
        mem[(32 * sub_e6318c1b.length) + 160] = sub_e6318c1b.length
        mem[(32 * sub_e6318c1b.length) + 192 len floor32(sub_e6318c1b.length)] = mem[128 len floor32(sub_e6318c1b.length)]
        return memory
          from (32 * sub_e6318c1b.length) + 128
           len (96 * sub_e6318c1b.length) + 64
    mem[128] = address(sub_e6318c1b.field_0)
    idx = 128
    s = 0
    while (32 * sub_e6318c1b.length) + 96 > idx:
        mem[idx + 32] = sub_e6318c1b[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_e6318c1b.length) + 192 len floor32(sub_e6318c1b.length)] = mem[128 len floor32(sub_e6318c1b.length)]
    return Array(len=sub_e6318c1b.length, data=mem[128 len floor32(sub_e6318c1b.length)], mem[(32 * sub_e6318c1b.length) + floor32(sub_e6318c1b.length) + 192 len (32 * sub_e6318c1b.length) - floor32(sub_e6318c1b.length)]), 
}

function removeCurrency(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'RCR: 1'
    idx = 0
    while idx < sub_e6318c1b.length:
        mem[0] = 103
        if sub_e6318c1b[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        if 1 > sub_e6318c1b.length:
            revert with 0, 'SafeMath: subtraction overflow'
        if idx < sub_e6318c1b.length - 1:
            if 1 > sub_e6318c1b.length:
                revert with 0, 'SafeMath: subtraction overflow'
            require sub_e6318c1b.length - 1 < sub_e6318c1b.length
            require idx < sub_e6318c1b.length
            sub_e6318c1b[idx].field_0 = sub_e6318c1b[sub_e6318c1b.length].field_0
        require sub_e6318c1b.length
        sub_e6318c1b[sub_e6318c1b.length].field_0 = 0
        sub_e6318c1b.length--
        sub_1c45389e[address(arg1)].field_0 = 0
        sub_4cb89f33[address(arg1)].field_0 = 0
    revert with 0, 'RCR: 2'
}

function sub_2673200f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1.length != sub_e6318c1b.length:
        revert with 0, 'UACR: 1'
    idx = 0
    while idx < arg1.length:
        require idx < sub_e6318c1b.length
        require idx < arg1.length
        mem[0] = sub_e6318c1b[idx].field_0
        mem[32] = 105
        sub_4cb89f33[stor103[idx].field_0].field_0 = mem[(32 * idx) + 144 len 16]
        sub_4cb89f33[stor103[idx].field_0].field_128 = 0
        idx = idx + 1
        continue 
    emit 0xd48cc78b: msg.sender
}

function sub_2f20a683(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'ACR: 1'
    if arg1.length != arg3.length:
        revert with 0, 'ACR: 2'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ACR: 3'
        if sub_4cb89f33[mem[(32 * idx) + 140 len 20]].field_0:
            revert with 0, 'ACR: 4'
        sub_e6318c1b.length++
        stor9787[stor103.length] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        sub_1c45389e[address(mem[(32 * idx) + 128])].field_0 = mem[(32 * idx) + (32 * arg1.length) + 176 len 16]
        sub_1c45389e[address(mem[(32 * idx) + 128])].field_128 = 0
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 105
        sub_4cb89f33[address(mem[(32 * idx) + 128])].field_0 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 208 len 16]
        sub_4cb89f33[address(mem[(32 * idx) + 128])].field_128 = 0
        idx = idx + 1
        continue 
}

function getTokenToTokenAmount(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg3:
        if sub_4cb89f33[address(arg2)].field_0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_4cb89f33[address(arg2)].field_0:
            if sub_1c45389e[address(arg1)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_1c45389e[address(arg1)].field_0:
                return (0 / sub_4cb89f33[address(arg2)].field_0 / sub_1c45389e[address(arg1)].field_0)
    else:
        if sub_1c45389e[address(arg2)].field_0 * arg3 / arg3 != sub_1c45389e[address(arg2)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not sub_1c45389e[address(arg2)].field_0 * arg3:
            if sub_4cb89f33[address(arg2)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_4cb89f33[address(arg2)].field_0:
                if sub_1c45389e[address(arg1)].field_0 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if sub_1c45389e[address(arg1)].field_0:
                    return (0 / sub_4cb89f33[address(arg2)].field_0 / sub_1c45389e[address(arg1)].field_0)
        else:
            if sub_4cb89f33[arg1].field_0 * sub_1c45389e[address(arg2)].field_0 * arg3 / sub_1c45389e[address(arg2)].field_0 * arg3 != sub_4cb89f33[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_4cb89f33[address(arg2)].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_4cb89f33[address(arg2)].field_0:
                if sub_1c45389e[address(arg1)].field_0 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if sub_1c45389e[address(arg1)].field_0:
                    return (sub_4cb89f33[arg1].field_0 * sub_1c45389e[address(arg2)].field_0 * arg3 / sub_4cb89f33[address(arg2)].field_0 / sub_1c45389e[address(arg1)].field_0)
    revert
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        baseCurrencyAddress = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            baseCurrencyAddress = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                baseCurrencyAddress = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    baseCurrencyAddress = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        baseCurrencyAddress = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        baseCurrencyAddress = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                        uint8(stor0.field_8) = 0
}



}
