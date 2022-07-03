contract main {




// =====================  Runtime code  =====================


#
#  - sub_a77e8462(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address settingsAddress;
address sub_bdb2b366Address;
mapping of struct stor103;
uint256 totalItems;

function totalItems() payable {
    return totalItems
}

function owner() payable {
    return owner
}

function sub_bdb2b366(?) payable {
    return sub_bdb2b366Address
}

function settings() payable {
    return settingsAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor103[arg1].field_0 = arg2
}

function setSupply(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor103[arg1].field_256 = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    settingsAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xb91d850e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_bdb2b366Address = ext_call.return_data[12 len 20]
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_5621af69(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor103[arg1].field_512 = arg2
    stor103[arg1].field_768 = arg3
    if stor103[arg1].field_1024:
        if stor103[arg1].field_1024 == uint255(stor103[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        if arg4.length:
            stor103[arg1][4][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor103[arg1].field_1024 = 0
            idx = 0
            while (uint255(stor103[arg1].field_1024) * 0.5) + 31 / 32 > idx:
                stor103[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor103[arg1].field_1024 == stor103[arg1].field_1025 < 32:
            revert with 0, 34
        if arg4.length:
            stor103[arg1][4][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor103[arg1].field_1024 = 0
            idx = 0
            while stor103[arg1].field_1025 + 31 / 32 > idx:
                stor103[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_698e1f31(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor103[stor104].field_0 = arg1
    stor103[stor104].field_256 = arg2
    stor103[stor104].field_512 = arg3
    stor103[stor104].field_768 = arg4
    if stor103[stor104].field_1024:
        if stor103[stor104].field_1024 == uint255(stor103[stor104].field_1024) * 0.5 < 32:
            revert with 0, 34
        if arg5.length:
            stor103[stor104][4][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor103[stor104].field_1024 = 0
            idx = 0
            while (uint255(stor103[stor104].field_1024) * 0.5) + 31 / 32 > idx:
                stor103[stor104][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor103[stor104].field_1024 == stor103[stor104].field_1025 < 32:
            revert with 0, 34
        if arg5.length:
            stor103[stor104][4][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor103[stor104].field_1024 = 0
            idx = 0
            while stor103[stor104].field_1025 + 31 / 32 > idx:
                stor103[stor104][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    if totalItems == -1:
        revert with 0, 17
    totalItems++
}

function items(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor103[arg1].field_1024:
        if stor103[arg1].field_1024 == uint255(stor103[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        if stor103[arg1].field_1024:
            if stor103[arg1].field_1024 == uint255(stor103[arg1].field_1024) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor103[arg1].field_1024):
                if 31 >= uint255(stor103[arg1].field_1024) * 0.5:
                    mem[128] = 256 * stor103[arg1].field_1032
                else:
                    mem[128] = stor103[arg1][4].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor103[arg1].field_1024) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor103[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor103[arg1].field_1024 == stor103[arg1].field_1025 < 32:
                revert with 0, 34
            if stor103[arg1].field_1025:
                if 31 >= stor103[arg1].field_1025:
                    mem[128] = 256 * stor103[arg1].field_1032
                else:
                    mem[128] = stor103[arg1][4].field_0
                    idx = 128
                    s = 0
                    while stor103[arg1].field_1025 + 96 > idx:
                        mem[idx + 32] = stor103[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor103[arg1].field_0, 
               stor103[arg1].field_256,
               stor103[arg1].field_512,
               stor103[arg1].field_768,
               Array(len=2 * Mask(256, -1, stor103[arg1].field_1024), data=mem[128 len ceil32(uint255(stor103[arg1].field_1024) * 0.5)])
    if stor103[arg1].field_1024 == stor103[arg1].field_1025 < 32:
        revert with 0, 34
    if stor103[arg1].field_1024:
        if stor103[arg1].field_1024 == uint255(stor103[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor103[arg1].field_1024):
            if 31 >= uint255(stor103[arg1].field_1024) * 0.5:
                mem[128] = 256 * stor103[arg1].field_1032
            else:
                mem[128] = stor103[arg1][4].field_0
                idx = 128
                s = 0
                while (uint255(stor103[arg1].field_1024) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor103[arg1][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor103[arg1].field_1024 == stor103[arg1].field_1025 < 32:
            revert with 0, 34
        if stor103[arg1].field_1025:
            if 31 >= stor103[arg1].field_1025:
                mem[128] = 256 * stor103[arg1].field_1032
            else:
                mem[128] = stor103[arg1][4].field_0
                idx = 128
                s = 0
                while stor103[arg1].field_1025 + 96 > idx:
                    mem[idx + 32] = stor103[arg1][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor103[arg1].field_0, 
           stor103[arg1].field_256,
           stor103[arg1].field_512,
           stor103[arg1].field_768,
           Array(len=stor103[arg1].field_1024, data=mem[128 len ceil32(stor103[arg1].field_1025)])
}

function sub_561df74d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 > totalItems:
        revert with 0, 'This ID doesnt exist'
    if not stor103[arg2].field_256:
        revert with 0, 'There are no items left'
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0x9885fdfa with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1e9a6950 with:
         gas gas_remaining wei
        args msg.sender, stor103[arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor103[arg2].field_1024:
        if stor103[arg2].field_1024 == uint255(stor103[arg2].field_1024) * 0.5 < 32:
            revert with 0, 34
        if not stor103[arg2].field_1024:
            require ext_code.size(sub_bdb2b366Address)
            call sub_bdb2b366Address.0x308b4036 with:
                 gas gas_remaining wei
                args address(arg1), stor103[arg2].field_512, stor103[arg2].field_768, Array(len=2 * Mask(256, -1, stor103[arg2].field_1024), data=Mask(248, 8, stor103[arg2].field_1024))
        else:
            if stor103[arg2].field_1024 != 1:
                require ext_code.size(sub_bdb2b366Address)
                call sub_bdb2b366Address.0x308b4036 with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 100 len -ceil32(return_data.size) - 100]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor103[arg2].field_1024) * 0.5:
                    mem[idx + ceil32(return_data.size) + 260] = stor103[arg2][s + 4].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_bdb2b366Address)
                call sub_bdb2b366Address.0x308b4036 with:
                     gas gas_remaining wei
                    args address(arg1), stor103[arg2].field_512, stor103[arg2].field_768, Array(len=2 * Mask(256, -1, stor103[arg2].field_1024), data=mem[ceil32(return_data.size) + 260 len ceil32(uint255(stor103[arg2].field_1024) * 0.5)])
    else:
        if stor103[arg2].field_1024 == stor103[arg2].field_1025 < 32:
            revert with 0, 34
        if not stor103[arg2].field_1024:
            require ext_code.size(sub_bdb2b366Address)
            call sub_bdb2b366Address.0x308b4036 with:
                 gas gas_remaining wei
                args address(arg1), stor103[arg2].field_512, stor103[arg2].field_768, Array(len=stor103[arg2].field_1024, data=Mask(248, 8, stor103[arg2].field_1024))
        else:
            if stor103[arg2].field_1024 != 1:
                require ext_code.size(sub_bdb2b366Address)
                call sub_bdb2b366Address.0x308b4036 with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 100 len -ceil32(return_data.size) - 100]
            else:
                idx = 0
                s = 0
                while idx < stor103[arg2].field_1025:
                    mem[idx + ceil32(return_data.size) + 260] = stor103[arg2][s + 4].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_bdb2b366Address)
                call sub_bdb2b366Address.0x308b4036 with:
                     gas gas_remaining wei
                    args address(arg1), stor103[arg2].field_512, stor103[arg2].field_768, Array(len=stor103[arg2].field_1024, data=mem[ceil32(return_data.size) + 260 len ceil32(stor103[arg2].field_1025)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor103[arg2].field_256 < 1:
        revert with 0, 17
    stor103[arg2].field_256--
}



}
