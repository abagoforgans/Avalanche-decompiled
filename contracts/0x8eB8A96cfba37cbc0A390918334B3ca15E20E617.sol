contract main {




// =====================  Runtime code  =====================


#
#  - sub_092629ff(?)
#
address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
array of uint256 stor4;
address stor5;
mapping of struct stor6;
mapping of struct stor7;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_355d9ae2(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > stor2:
        revert with 0, 'Staff Id doesn't exist'
    stor7[arg1].field_1024 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > stor1:
        revert with 0, 'Node Token Id doesn't exist'
    require ext_code.size(stor6[arg1].field_512)
    staticcall stor6[arg1].field_512.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6[arg1].field_512)
    call stor6[arg1].field_512.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sendRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > stor1:
        revert with 0, 'Node Token Id doesn't exist'
    mem[0] = arg1
    mem[32] = 6
    mem[100] = this.address
    require ext_code.size(stor6[arg1].field_512)
    staticcall stor6[arg1].field_512.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Token balance must be greater than 0'
    idx = 1
    while idx <= stor2:
        mem[0] = idx
        mem[32] = 7
        mem[mem[64] + 4] = stor7[idx].field_768
        mem[mem[64] + 36] = stor7[idx].field_1024
        require ext_code.size(stor6[arg1].field_512)
        call stor6[arg1].field_512.0xa9059cbb with:
             gas gas_remaining wei
            args stor7[idx].field_768, stor7[idx].field_1024
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_20] == bool(mem[_20])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c0cd5652(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > stor1:
        revert with 0, 'Node Token Id doesn't exist'
    mem[0] = arg1
    mem[32] = 6
    mem[100] = this.address
    require ext_code.size(stor6[arg1].field_512)
    staticcall stor6[arg1].field_512.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Token balance must be greater than 0'
    if arg2 > stor2:
        revert with 0, 'First Id must be less than or equal to the amount of staff'
    if arg3 > stor2:
        revert with 0, 'First Id must be less than or equal to the amount of staff'
    if arg2 > arg3:
        revert with 0, 'First Id must be less than Last Id'
    idx = arg2
    while idx <= arg3:
        mem[0] = idx
        mem[32] = 7
        mem[mem[64] + 4] = stor7[idx].field_768
        mem[mem[64] + 36] = stor7[idx].field_1024
        require ext_code.size(stor6[arg1].field_512)
        call stor6[arg1].field_512.0xa9059cbb with:
             gas gas_remaining wei
            args stor7[idx].field_768, stor7[idx].field_1024
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_26] == bool(mem[_26])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_285bd181(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2++
    stor7[stor2].field_0 = stor2
    if stor7[stor2].field_256:
        if stor7[stor2].field_256 == uint255(stor7[stor2].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor7[stor2][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7[stor2].field_256 = 0
            idx = 0
            while (uint255(stor7[stor2].field_256) * 0.5) + 31 / 32 > idx:
                stor7[stor2][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[stor2].field_256 == stor7[stor2].field_257 < 32:
            revert with 0, 34
        if arg1.length:
            stor7[stor2][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7[stor2].field_256 = 0
            idx = 0
            while stor7[stor2].field_257 + 31 / 32 > idx:
                stor7[stor2][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    if stor7[stor2].field_512:
        if stor7[stor2].field_512 == uint255(stor7[stor2].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor7[stor2][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7[stor2].field_512 = 0
            idx = 0
            while (uint255(stor7[stor2].field_512) * 0.5) + 31 / 32 > idx:
                stor7[stor2][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[stor2].field_512 == stor7[stor2].field_513 < 32:
            revert with 0, 34
        if arg2.length:
            stor7[stor2][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7[stor2].field_512 = 0
            idx = 0
            while stor7[stor2].field_513 + 31 / 32 > idx:
                stor7[stor2][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor7[stor2].field_768 = address(arg3)
    stor7[stor2].field_1024 = arg4
}

function sub_100054df(?) {
    require calldata.size - 4 >= 32
    if stor6[arg1].field_256:
        if stor6[arg1].field_256 == uint255(stor6[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if stor6[arg1].field_256:
            if stor6[arg1].field_256 == uint255(stor6[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_256):
                if 31 >= uint255(stor6[arg1].field_256) * 0.5:
                    mem[128] = 256 * stor6[arg1].field_264
                else:
                    mem[128] = stor6[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor6[arg1].field_256 == stor6[arg1].field_257 < 32:
                revert with 0, 34
            if stor6[arg1].field_257:
                if 31 >= stor6[arg1].field_257:
                    mem[128] = 256 * stor6[arg1].field_264
                else:
                    mem[128] = stor6[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor6[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor6[arg1].field_256), data=mem[128 len ceil32(uint255(stor6[arg1].field_256) * 0.5)]),
               stor6[arg1].field_512
    if stor6[arg1].field_256 == stor6[arg1].field_257 < 32:
        revert with 0, 34
    if stor6[arg1].field_256:
        if stor6[arg1].field_256 == uint255(stor6[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_256):
            if 31 >= uint255(stor6[arg1].field_256) * 0.5:
                mem[128] = 256 * stor6[arg1].field_264
            else:
                mem[128] = stor6[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor6[arg1].field_256 == stor6[arg1].field_257 < 32:
            revert with 0, 34
        if stor6[arg1].field_257:
            if 31 >= stor6[arg1].field_257:
                mem[128] = 256 * stor6[arg1].field_264
            else:
                mem[128] = stor6[arg1][1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor6[arg1].field_0, 
           Array(len=stor6[arg1].field_256, data=mem[128 len ceil32(stor6[arg1].field_257)]),
           stor6[arg1].field_512
}

function addToken(string arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1++
    stor3 = stor1
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    stor5 = arg2
    stor6[stor1].field_0 = stor3
    if not bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor6[stor1].field_256:
            if stor6[stor1].field_256 == uint255(stor6[stor1].field_256) * 0.5 < 32:
                revert with 0, 34
            if not stor4.length.field_1:
                stor6[stor1].field_256 = 0
                idx = 0
                while (uint255(stor6[stor1].field_256) * 0.5) + 31 / 32 > idx:
                    stor6[stor1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor6[stor1].field_256 = (2 * stor4.length.field_1) + 1
                s = 0
                idx = 0
                while stor4.length.field_1 + 31 / 32 > idx:
                    stor6[stor1][s + 1].field_0 = stor4[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor4.length.field_1 + 31 / 32
                while (uint255(stor6[stor1].field_256) * 0.5) + 31 / 32 > idx:
                    stor6[stor1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor6[stor1].field_256 == stor6[stor1].field_257 < 32:
                revert with 0, 34
            if not stor4.length.field_1:
                stor6[stor1].field_256 = 0
                idx = 0
                while stor6[stor1].field_257 + 31 / 32 > idx:
                    stor6[stor1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor6[stor1].field_256 = (2 * stor4.length.field_1) + 1
                s = 0
                idx = 0
                while stor4.length.field_1 + 31 / 32 > idx:
                    stor6[stor1][s + 1].field_0 = stor4[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor4.length.field_1 + 31 / 32
                while stor6[stor1].field_257 + 31 / 32 > idx:
                    stor6[stor1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if stor6[stor1].field_256:
            if stor6[stor1].field_256 == uint255(stor6[stor1].field_256) * 0.5 < 32:
                revert with 0, 34
            if not uint255(stor4.length) * 0.5:
                stor6[stor1].field_256 = 0
                idx = 0
                while (uint255(stor6[stor1].field_256) * 0.5) + 31 / 32 > idx:
                    stor6[stor1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if 31 >= uint255(stor4.length) * 0.5:
                    stor6[stor1].field_256 = stor4.length
                    idx = 0
                    while (uint255(stor6[stor1].field_256) * 0.5) + 31 / 32 > idx:
                        stor6[stor1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor6[stor1].field_256 = Mask(254, 1, stor4.length) + 1
                    if not Mask(256, -1, stor4.length):
                        idx = 0
                        while (uint255(stor6[stor1].field_256) * 0.5) + 31 / 32 > idx:
                            stor6[stor1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                            stor6[stor1][s + 1].field_0 = stor4[idx].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = (uint255(stor4.length) * 0.5) + 31 / 32
                        while (uint255(stor6[stor1].field_256) * 0.5) + 31 / 32 > idx:
                            stor6[stor1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
        else:
            if stor6[stor1].field_256 == stor6[stor1].field_257 < 32:
                revert with 0, 34
            if not uint255(stor4.length) * 0.5:
                stor6[stor1].field_256 = 0
                idx = 0
                while stor6[stor1].field_257 + 31 / 32 > idx:
                    stor6[stor1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if 31 >= uint255(stor4.length) * 0.5:
                    stor6[stor1].field_256 = stor4.length
                    idx = 0
                    while stor6[stor1].field_257 + 31 / 32 > idx:
                        stor6[stor1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor6[stor1].field_256 = Mask(254, 1, stor4.length) + 1
                    if not Mask(256, -1, stor4.length):
                        idx = 0
                        while stor6[stor1].field_257 + 31 / 32 > idx:
                            stor6[stor1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                            stor6[stor1][s + 1].field_0 = stor4[idx].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = (uint255(stor4.length) * 0.5) + 31 / 32
                        while stor6[stor1].field_257 + 31 / 32 > idx:
                            stor6[stor1][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
    stor6[stor1].field_512 = stor5
}



}
