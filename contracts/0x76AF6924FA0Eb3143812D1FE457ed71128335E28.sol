contract main {




// =====================  Runtime code  =====================


#
#  - sub_6e7b2c26(?)
#
address owner;
array of struct stor3;
mapping of struct sub_7dfe9749;
mapping of address stor5;

function sub_7dfe9749(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_7dfe9749[arg1][arg2].field_0, bool(sub_7dfe9749[arg1][arg2].field_256), sub_7dfe9749[arg1][arg2].field_512
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(ext_code.size(arg1))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_233e3678(?) payable {
    require calldata.size - 4 >= 32
    staticcall stor5[arg1].0xe0ebb102 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_ef291476(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor5[arg1])
    call stor5[arg1].0xf2fde38b with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_2ed5cecb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function Name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function sub_2bc441fd(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1:
        if arg1 != 1:
            if arg1 != 2:
                idx = 0
                s = 0
                while idx <= 0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * idx) + 128]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + 128]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + 128] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 128]
                    continue 
            else:
                mem[0] = arg1
                mem[32] = 5
                staticcall stor5[arg1].0xa38cb5b4 with:
                        gas gas_remaining wei
                       args 0, address(arg2)
                mem[96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[ceil32(return_data.size) + 96] = 0xc311af0100000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = 0
                mem[ceil32(return_data.size) + 132] = address(arg2)
                staticcall stor5[arg1].0xc311af01 with:
                        gas gas_remaining wei
                       args 0, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 128
                _37 = mem[ceil32(return_data.size) + 96 len 4], 0
                require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
                _42 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
                mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
                require _37 + (32 * _42) + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _42)] = mem[ceil32(return_data.size) + _37 + 128 len ceil32(32 * _42)]
                require 0, address(arg2) << 64 <= test266151307()
                require ceil32(return_data.size) + 0, address(arg2) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
                _279 = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
                if mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96] > test266151307():
                    revert with 0, 65
                _283 = mem[64]
                if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1
                mem[_283] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
                require 0, address(arg2) << 64 + (32 * _279) + 32 <= return_data.size
                mem[_283 + 32 len ceil32(32 * _279)] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 128 len ceil32(32 * _279)]
                _498 = 0, mem[ceil32(return_data.size) + 164 len 28]
                require 0, mem[ceil32(return_data.size) + 164 len 28] <= test266151307()
                require ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
                _501 = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
                if mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96] > test266151307():
                    revert with 0, 65
                _504 = mem[64]
                if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1
                mem[_504] = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
                require _498 + (32 * _501) + 32 <= return_data.size
                mem[_504 + 32 len ceil32(32 * _501)] = mem[ceil32(return_data.size) + _498 + 128 len ceil32(32 * _501)]
                _706 = mem[ceil32(return_data.size) + 192]
                require mem[ceil32(return_data.size) + 192] <= test266151307()
                require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 127
                _709 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96] > test266151307():
                    revert with 0, 65
                _712 = mem[64]
                if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1
                mem[_712] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
                require _706 + (32 * _709) + 32 <= return_data.size
                s = _712 + 32
                idx = ceil32(return_data.size) + _706 + 128
                while idx < ceil32(return_data.size) + _706 + (32 * _709) + 128:
                    require mem[idx] == bool(mem[idx])
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                s = 0
                while idx <= ext_call.return_data[64]:
                    if idx >= _709:
                        revert with 0, 50
                    if mem[(32 * idx) + _712 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_283]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _283 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _283 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _283 + 32]
                    continue 
        else:
            mem[0] = arg1
            mem[32] = 5
            staticcall stor5[arg1].0xa38cb5b4 with:
                    gas gas_remaining wei
                   args 0, address(arg2)
            mem[96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[ceil32(return_data.size) + 96] = 0xc311af0100000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = 0
            mem[ceil32(return_data.size) + 132] = address(arg2)
            staticcall stor5[arg1].0xc311af01 with:
                    gas gas_remaining wei
                   args 0, address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 128
            _36 = mem[ceil32(return_data.size) + 96 len 4], 0
            require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
            _40 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
            require _36 + (32 * _40) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _40)] = mem[ceil32(return_data.size) + _36 + 128 len ceil32(32 * _40)]
            require 0, address(arg2) << 64 <= test266151307()
            require ceil32(return_data.size) + 0, address(arg2) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
            _280 = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
            if mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96] > test266151307():
                revert with 0, 65
            _284 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1
            mem[_284] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
            require 0, address(arg2) << 64 + (32 * _280) + 32 <= return_data.size
            mem[_284 + 32 len ceil32(32 * _280)] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 128 len ceil32(32 * _280)]
            _499 = 0, mem[ceil32(return_data.size) + 164 len 28]
            require 0, mem[ceil32(return_data.size) + 164 len 28] <= test266151307()
            require ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
            _502 = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
            if mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96] > test266151307():
                revert with 0, 65
            _505 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1
            mem[_505] = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
            require _499 + (32 * _502) + 32 <= return_data.size
            mem[_505 + 32 len ceil32(32 * _502)] = mem[ceil32(return_data.size) + _499 + 128 len ceil32(32 * _502)]
            _707 = mem[ceil32(return_data.size) + 192]
            require mem[ceil32(return_data.size) + 192] <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 127
            _710 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96] > test266151307():
                revert with 0, 65
            _713 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1
            mem[_713] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
            require _707 + (32 * _710) + 32 <= return_data.size
            s = _713 + 32
            idx = ceil32(return_data.size) + _707 + 128
            while idx < ceil32(return_data.size) + _707 + (32 * _710) + 128:
                require mem[idx] == bool(mem[idx])
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if arg1 != 2:
                idx = 0
                s = 0
                while idx <= ext_call.return_data[64]:
                    if idx >= _710:
                        revert with 0, 50
                    if mem[(32 * idx) + _713 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_284]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _284 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _284 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _284 + 32]
                    continue 
            else:
                mem[0] = arg1
                mem[32] = 5
                staticcall stor5[arg1].0xa38cb5b4 with:
                        gas gas_remaining wei
                       args 0, address(arg2)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _912 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _930 = mem[_912 + 64]
                mem[mem[64]] = 0xc311af0100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(arg2)
                staticcall stor5[arg1].0xc311af01 with:
                        gas gas_remaining wei
                       args 0, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _954 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _959 = mem[_954]
                require mem[_954] <= test266151307()
                require _954 + mem[_954] + 31 < _954 + return_data.size
                _966 = mem[_954 + mem[_954]]
                if mem[_954 + mem[_954]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_954 + mem[_954]]) + 1 < 0 or _954 + ceil32(return_data.size) + ceil32(32 * mem[_954 + mem[_954]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _954 + ceil32(return_data.size) + ceil32(32 * mem[_954 + mem[_954]]) + 1
                mem[_954 + ceil32(return_data.size)] = _966
                require _959 + (32 * _966) + 32 <= return_data.size
                mem[_954 + ceil32(return_data.size) + 32 len ceil32(32 * _966)] = mem[_954 + _959 + 32 len ceil32(32 * _966)]
                _1102 = mem[_954 + 32]
                require mem[_954 + 32] <= test266151307()
                require _954 + mem[_954 + 32] + 31 < _954 + return_data.size
                _1116 = mem[_954 + mem[_954 + 32]]
                if mem[_954 + mem[_954 + 32]] > test266151307():
                    revert with 0, 65
                _1121 = mem[64]
                if mem[64] + ceil32(32 * mem[_954 + mem[_954 + 32]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_954 + mem[_954 + 32]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_954 + mem[_954 + 32]]) + 1
                mem[_1121] = _1116
                require _1102 + (32 * _1116) + 32 <= return_data.size
                mem[_1121 + 32 len ceil32(32 * _1116)] = mem[_954 + _1102 + 32 len ceil32(32 * _1116)]
                _1228 = mem[_954 + 64]
                require mem[_954 + 64] <= test266151307()
                require _954 + mem[_954 + 64] + 31 < _954 + return_data.size
                _1231 = mem[_954 + mem[_954 + 64]]
                if mem[_954 + mem[_954 + 64]] > test266151307():
                    revert with 0, 65
                _1234 = mem[64]
                if mem[64] + ceil32(32 * mem[_954 + mem[_954 + 64]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_954 + mem[_954 + 64]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_954 + mem[_954 + 64]]) + 1
                mem[_1234] = _1231
                require _1228 + (32 * _1231) + 32 <= return_data.size
                mem[_1234 + 32 len ceil32(32 * _1231)] = mem[_954 + _1228 + 32 len ceil32(32 * _1231)]
                _1325 = mem[_954 + 96]
                require mem[_954 + 96] <= test266151307()
                require _954 + return_data.size > _954 + mem[_954 + 96] + 31
                _1328 = mem[_954 + mem[_954 + 96]]
                if mem[_954 + mem[_954 + 96]] > test266151307():
                    revert with 0, 65
                _1331 = mem[64]
                if mem[64] + ceil32(32 * mem[_954 + mem[_954 + 96]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_954 + mem[_954 + 96]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_954 + mem[_954 + 96]]) + 1
                mem[_1331] = _1328
                require _1325 + (32 * _1328) + 32 <= return_data.size
                s = _1331 + 32
                idx = _954 + _1325 + 32
                while idx < _954 + _1325 + (32 * _1328) + 32:
                    require mem[idx] == bool(mem[idx])
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                s = 0
                while idx <= _930:
                    if idx >= _1328:
                        revert with 0, 50
                    if mem[(32 * idx) + _1331 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_1121]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _1121 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _1121 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _1121 + 32]
                    continue 
    else:
        mem[0] = arg1
        mem[32] = 5
        staticcall stor5[arg1].0xa38cb5b4 with:
                gas gas_remaining wei
               args 0, address(arg2)
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[ceil32(return_data.size) + 96] = 0xc311af0100000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = 0
        mem[ceil32(return_data.size) + 132] = address(arg2)
        staticcall stor5[arg1].0xc311af01 with:
                gas gas_remaining wei
               args 0, address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 128
        _35 = mem[ceil32(return_data.size) + 96 len 4], 0
        require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
        _38 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        require _35 + (32 * _38) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _38)] = mem[ceil32(return_data.size) + _35 + 128 len ceil32(32 * _38)]
        require 0, address(arg2) << 64 <= test266151307()
        require ceil32(return_data.size) + 0, address(arg2) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
        _281 = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
        if mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96] > test266151307():
            revert with 0, 65
        _285 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1
        mem[_285] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
        require 0, address(arg2) << 64 + (32 * _281) + 32 <= return_data.size
        mem[_285 + 32 len ceil32(32 * _281)] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 128 len ceil32(32 * _281)]
        _500 = 0, mem[ceil32(return_data.size) + 164 len 28]
        require 0, mem[ceil32(return_data.size) + 164 len 28] <= test266151307()
        require ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
        _503 = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
        if mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96] > test266151307():
            revert with 0, 65
        _506 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1
        mem[_506] = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
        require _500 + (32 * _503) + 32 <= return_data.size
        mem[_506 + 32 len ceil32(32 * _503)] = mem[ceil32(return_data.size) + _500 + 128 len ceil32(32 * _503)]
        _708 = mem[ceil32(return_data.size) + 192]
        require mem[ceil32(return_data.size) + 192] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 127
        _711 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96] > test266151307():
            revert with 0, 65
        _714 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1
        mem[_714] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
        require _708 + (32 * _711) + 32 <= return_data.size
        s = _714 + 32
        idx = ceil32(return_data.size) + _708 + 128
        while idx < ceil32(return_data.size) + _708 + (32 * _711) + 128:
            require mem[idx] == bool(mem[idx])
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        if arg1 != 1:
            if arg1 != 2:
                idx = 0
                s = 0
                while idx <= ext_call.return_data[64]:
                    if idx >= _711:
                        revert with 0, 50
                    if mem[(32 * idx) + _714 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_285]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _285 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _285 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _285 + 32]
                    continue 
            else:
                mem[0] = arg1
                mem[32] = 5
                staticcall stor5[arg1].0xa38cb5b4 with:
                        gas gas_remaining wei
                       args 0, address(arg2)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _923 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _946 = mem[_923 + 64]
                mem[mem[64]] = 0xc311af0100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(arg2)
                staticcall stor5[arg1].0xc311af01 with:
                        gas gas_remaining wei
                       args 0, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _958 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _962 = mem[_958]
                require mem[_958] <= test266151307()
                require _958 + mem[_958] + 31 < _958 + return_data.size
                _970 = mem[_958 + mem[_958]]
                if mem[_958 + mem[_958]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_958 + mem[_958]]) + 1 < 0 or _958 + ceil32(return_data.size) + ceil32(32 * mem[_958 + mem[_958]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _958 + ceil32(return_data.size) + ceil32(32 * mem[_958 + mem[_958]]) + 1
                mem[_958 + ceil32(return_data.size)] = _970
                require _962 + (32 * _970) + 32 <= return_data.size
                mem[_958 + ceil32(return_data.size) + 32 len ceil32(32 * _970)] = mem[_958 + _962 + 32 len ceil32(32 * _970)]
                _1105 = mem[_958 + 32]
                require mem[_958 + 32] <= test266151307()
                require _958 + mem[_958 + 32] + 31 < _958 + return_data.size
                _1117 = mem[_958 + mem[_958 + 32]]
                if mem[_958 + mem[_958 + 32]] > test266151307():
                    revert with 0, 65
                _1123 = mem[64]
                if mem[64] + ceil32(32 * mem[_958 + mem[_958 + 32]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_958 + mem[_958 + 32]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_958 + mem[_958 + 32]]) + 1
                mem[_1123] = _1117
                require _1105 + (32 * _1117) + 32 <= return_data.size
                mem[_1123 + 32 len ceil32(32 * _1117)] = mem[_958 + _1105 + 32 len ceil32(32 * _1117)]
                _1229 = mem[_958 + 64]
                require mem[_958 + 64] <= test266151307()
                require _958 + mem[_958 + 64] + 31 < _958 + return_data.size
                _1232 = mem[_958 + mem[_958 + 64]]
                if mem[_958 + mem[_958 + 64]] > test266151307():
                    revert with 0, 65
                _1235 = mem[64]
                if mem[64] + ceil32(32 * mem[_958 + mem[_958 + 64]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_958 + mem[_958 + 64]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_958 + mem[_958 + 64]]) + 1
                mem[_1235] = _1232
                require _1229 + (32 * _1232) + 32 <= return_data.size
                mem[_1235 + 32 len ceil32(32 * _1232)] = mem[_958 + _1229 + 32 len ceil32(32 * _1232)]
                _1326 = mem[_958 + 96]
                require mem[_958 + 96] <= test266151307()
                require _958 + return_data.size > _958 + mem[_958 + 96] + 31
                _1329 = mem[_958 + mem[_958 + 96]]
                if mem[_958 + mem[_958 + 96]] > test266151307():
                    revert with 0, 65
                _1332 = mem[64]
                if mem[64] + ceil32(32 * mem[_958 + mem[_958 + 96]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_958 + mem[_958 + 96]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_958 + mem[_958 + 96]]) + 1
                mem[_1332] = _1329
                require _1326 + (32 * _1329) + 32 <= return_data.size
                s = _1332 + 32
                idx = _958 + _1326 + 32
                while idx < _958 + _1326 + (32 * _1329) + 32:
                    require mem[idx] == bool(mem[idx])
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                s = 0
                while idx <= _946:
                    if idx >= _1329:
                        revert with 0, 50
                    if mem[(32 * idx) + _1332 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_1123]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _1123 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _1123 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _1123 + 32]
                    continue 
        else:
            mem[0] = arg1
            mem[32] = 5
            staticcall stor5[arg1].0xa38cb5b4 with:
                    gas gas_remaining wei
                   args 0, address(arg2)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _916 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _937 = mem[_916 + 64]
            mem[mem[64]] = 0xc311af0100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = address(arg2)
            staticcall stor5[arg1].0xc311af01 with:
                    gas gas_remaining wei
                   args 0, address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _957 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _960 = mem[_957]
            require mem[_957] <= test266151307()
            require _957 + mem[_957] + 31 < _957 + return_data.size
            _968 = mem[_957 + mem[_957]]
            if mem[_957 + mem[_957]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_957 + mem[_957]]) + 1 < 0 or _957 + ceil32(return_data.size) + ceil32(32 * mem[_957 + mem[_957]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _957 + ceil32(return_data.size) + ceil32(32 * mem[_957 + mem[_957]]) + 1
            mem[_957 + ceil32(return_data.size)] = _968
            require _960 + (32 * _968) + 32 <= return_data.size
            mem[_957 + ceil32(return_data.size) + 32 len ceil32(32 * _968)] = mem[_957 + _960 + 32 len ceil32(32 * _968)]
            _1106 = mem[_957 + 32]
            require mem[_957 + 32] <= test266151307()
            require _957 + mem[_957 + 32] + 31 < _957 + return_data.size
            _1118 = mem[_957 + mem[_957 + 32]]
            if mem[_957 + mem[_957 + 32]] > test266151307():
                revert with 0, 65
            _1124 = mem[64]
            if mem[64] + ceil32(32 * mem[_957 + mem[_957 + 32]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_957 + mem[_957 + 32]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_957 + mem[_957 + 32]]) + 1
            mem[_1124] = _1118
            require _1106 + (32 * _1118) + 32 <= return_data.size
            mem[_1124 + 32 len ceil32(32 * _1118)] = mem[_957 + _1106 + 32 len ceil32(32 * _1118)]
            _1230 = mem[_957 + 64]
            require mem[_957 + 64] <= test266151307()
            require _957 + mem[_957 + 64] + 31 < _957 + return_data.size
            _1233 = mem[_957 + mem[_957 + 64]]
            if mem[_957 + mem[_957 + 64]] > test266151307():
                revert with 0, 65
            _1236 = mem[64]
            if mem[64] + ceil32(32 * mem[_957 + mem[_957 + 64]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_957 + mem[_957 + 64]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_957 + mem[_957 + 64]]) + 1
            mem[_1236] = _1233
            require _1230 + (32 * _1233) + 32 <= return_data.size
            mem[_1236 + 32 len ceil32(32 * _1233)] = mem[_957 + _1230 + 32 len ceil32(32 * _1233)]
            _1327 = mem[_957 + 96]
            require mem[_957 + 96] <= test266151307()
            require _957 + return_data.size > _957 + mem[_957 + 96] + 31
            _1330 = mem[_957 + mem[_957 + 96]]
            if mem[_957 + mem[_957 + 96]] > test266151307():
                revert with 0, 65
            _1333 = mem[64]
            if mem[64] + ceil32(32 * mem[_957 + mem[_957 + 96]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_957 + mem[_957 + 96]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_957 + mem[_957 + 96]]) + 1
            mem[_1333] = _1330
            require _1327 + (32 * _1330) + 32 <= return_data.size
            s = _1333 + 32
            idx = _957 + _1327 + 32
            while idx < _957 + _1327 + (32 * _1330) + 32:
                require mem[idx] == bool(mem[idx])
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if arg1 != 2:
                idx = 0
                s = 0
                while idx <= _937:
                    if idx >= _1330:
                        revert with 0, 50
                    if mem[(32 * idx) + _1333 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_1124]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _1124 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _1124 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _1124 + 32]
                    continue 
            else:
                mem[0] = arg1
                mem[32] = 5
                staticcall stor5[arg1].0xa38cb5b4 with:
                        gas gas_remaining wei
                       args 0, address(arg2)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1438 = mem[_1421 + 64]
                mem[mem[64]] = 0xc311af0100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(arg2)
                staticcall stor5[arg1].0xc311af01 with:
                        gas gas_remaining wei
                       args 0, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1446 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1447 = mem[_1446]
                require mem[_1446] <= test266151307()
                require _1446 + mem[_1446] + 31 < _1446 + return_data.size
                _1454 = mem[_1446 + mem[_1446]]
                if mem[_1446 + mem[_1446]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_1446 + mem[_1446]]) + 1 < 0 or _1446 + ceil32(return_data.size) + ceil32(32 * mem[_1446 + mem[_1446]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1446 + ceil32(return_data.size) + ceil32(32 * mem[_1446 + mem[_1446]]) + 1
                mem[_1446 + ceil32(return_data.size)] = _1454
                require _1447 + (32 * _1454) + 32 <= return_data.size
                mem[_1446 + ceil32(return_data.size) + 32 len ceil32(32 * _1454)] = mem[_1446 + _1447 + 32 len ceil32(32 * _1454)]
                _1499 = mem[_1446 + 32]
                require mem[_1446 + 32] <= test266151307()
                require _1446 + mem[_1446 + 32] + 31 < _1446 + return_data.size
                _1509 = mem[_1446 + mem[_1446 + 32]]
                if mem[_1446 + mem[_1446 + 32]] > test266151307():
                    revert with 0, 65
                _1513 = mem[64]
                if mem[64] + ceil32(32 * mem[_1446 + mem[_1446 + 32]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1446 + mem[_1446 + 32]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1446 + mem[_1446 + 32]]) + 1
                mem[_1513] = _1509
                require _1499 + (32 * _1509) + 32 <= return_data.size
                mem[_1513 + 32 len ceil32(32 * _1509)] = mem[_1446 + _1499 + 32 len ceil32(32 * _1509)]
                _1538 = mem[_1446 + 64]
                require mem[_1446 + 64] <= test266151307()
                require _1446 + mem[_1446 + 64] + 31 < _1446 + return_data.size
                _1539 = mem[_1446 + mem[_1446 + 64]]
                if mem[_1446 + mem[_1446 + 64]] > test266151307():
                    revert with 0, 65
                _1540 = mem[64]
                if mem[64] + ceil32(32 * mem[_1446 + mem[_1446 + 64]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1446 + mem[_1446 + 64]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1446 + mem[_1446 + 64]]) + 1
                mem[_1540] = _1539
                require _1538 + (32 * _1539) + 32 <= return_data.size
                mem[_1540 + 32 len ceil32(32 * _1539)] = mem[_1446 + _1538 + 32 len ceil32(32 * _1539)]
                _1558 = mem[_1446 + 96]
                require mem[_1446 + 96] <= test266151307()
                require _1446 + return_data.size > _1446 + mem[_1446 + 96] + 31
                _1559 = mem[_1446 + mem[_1446 + 96]]
                if mem[_1446 + mem[_1446 + 96]] > test266151307():
                    revert with 0, 65
                _1560 = mem[64]
                if mem[64] + ceil32(32 * mem[_1446 + mem[_1446 + 96]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1446 + mem[_1446 + 96]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1446 + mem[_1446 + 96]]) + 1
                mem[_1560] = _1559
                require _1558 + (32 * _1559) + 32 <= return_data.size
                s = _1560 + 32
                idx = _1446 + _1558 + 32
                while idx < _1446 + _1558 + (32 * _1559) + 32:
                    require mem[idx] == bool(mem[idx])
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                s = 0
                while idx <= _1438:
                    if idx >= _1559:
                        revert with 0, 50
                    if mem[(32 * idx) + _1560 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_1513]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _1513 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _1513 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _1513 + 32]
                    continue 
    return s, bool(sub_7dfe9749[address(arg2)][stor5[arg1]].field_256)
}

function Claim(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not arg2:
        revert with 0, 'Claimer cannot be zero!'
    if arg2 != msg.sender:
        revert with 0, 'Invalid user!'
    if ext_code.size(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Claimer cannot be smart contract, BAD'
    if arg1:
        if arg1 != 1:
            if arg1 != 2:
                idx = 0
                s = 0
                while idx <= 0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * idx) + 128]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + 128]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + 128] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 128]
                    continue 
                if sub_7dfe9749[address(arg2)][stor5[arg1]].field_256:
                    revert with 0, 'User already claimed!'
                if s <= 0:
                    revert with 0, 'Insufficient user balance!'
                staticcall stor5[arg1].0xe0ebb102 with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Insufficient contract balance!'
                if ext_call.return_data[0] >= s:
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_256 = 1
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_0 = s
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_512 = block.timestamp
            else:
                mem[0] = arg1
                mem[32] = 5
                staticcall stor5[arg1].0xa38cb5b4 with:
                        gas gas_remaining wei
                       args 0, arg2
                mem[96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[ceil32(return_data.size) + 96] = 0xc311af0100000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = 0
                mem[ceil32(return_data.size) + 132] = arg2
                staticcall stor5[arg1].0xc311af01 with:
                        gas gas_remaining wei
                       args 0, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 128
                _44 = mem[ceil32(return_data.size) + 96 len 4], 0
                require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
                _49 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
                mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
                require _44 + (32 * _49) + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _49)] = mem[ceil32(return_data.size) + _44 + 128 len ceil32(32 * _49)]
                require 0, address(arg2) << 64 <= test266151307()
                require ceil32(return_data.size) + 0, address(arg2) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
                _304 = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
                if mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96] > test266151307():
                    revert with 0, 65
                _309 = mem[64]
                if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1
                mem[_309] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
                require 0, address(arg2) << 64 + (32 * _304) + 32 <= return_data.size
                mem[_309 + 32 len ceil32(32 * _304)] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 128 len ceil32(32 * _304)]
                _555 = 0, mem[ceil32(return_data.size) + 164 len 28]
                require 0, mem[ceil32(return_data.size) + 164 len 28] <= test266151307()
                require ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
                _558 = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
                if mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96] > test266151307():
                    revert with 0, 65
                _561 = mem[64]
                if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1
                mem[_561] = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
                require _555 + (32 * _558) + 32 <= return_data.size
                mem[_561 + 32 len ceil32(32 * _558)] = mem[ceil32(return_data.size) + _555 + 128 len ceil32(32 * _558)]
                _777 = mem[ceil32(return_data.size) + 192]
                require mem[ceil32(return_data.size) + 192] <= test266151307()
                require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 127
                _780 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96] > test266151307():
                    revert with 0, 65
                _783 = mem[64]
                if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1
                mem[_783] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
                require _777 + (32 * _780) + 32 <= return_data.size
                s = _783 + 32
                idx = ceil32(return_data.size) + _777 + 128
                while idx < ceil32(return_data.size) + _777 + (32 * _780) + 128:
                    require mem[idx] == bool(mem[idx])
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                s = 0
                while idx <= ext_call.return_data[64]:
                    if idx >= _780:
                        revert with 0, 50
                    if mem[(32 * idx) + _783 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_309]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _309 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _309 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _309 + 32]
                    continue 
                mem[0] = stor5[arg1]
                mem[32] = sha3(address(arg2), 4)
                if sub_7dfe9749[address(arg2)][stor5[arg1]].field_256:
                    revert with 0, 'User already claimed!'
                if s <= 0:
                    revert with 0, 'Insufficient user balance!'
                mem[mem[64] + 4] = 0
                staticcall stor5[arg1].0xe0ebb102 with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1233 = mem[_1224]
                require mem[_1224] == mem[_1224 + 12 len 20]
                mem[mem[64] + 4] = this.address
                staticcall address(_1233).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1251 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1251] <= 0:
                    revert with 0, 'Insufficient contract balance!'
                if mem[_1251] >= s:
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = s
                    call address(_1233).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1281 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1281] == bool(mem[_1281])
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_256 = 1
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_0 = s
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_512 = block.timestamp
        else:
            mem[0] = arg1
            mem[32] = 5
            staticcall stor5[arg1].0xa38cb5b4 with:
                    gas gas_remaining wei
                   args 0, arg2
            mem[96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[ceil32(return_data.size) + 96] = 0xc311af0100000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = 0
            mem[ceil32(return_data.size) + 132] = arg2
            staticcall stor5[arg1].0xc311af01 with:
                    gas gas_remaining wei
                   args 0, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 128
            _43 = mem[ceil32(return_data.size) + 96 len 4], 0
            require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
            _47 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
            require _43 + (32 * _47) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _47)] = mem[ceil32(return_data.size) + _43 + 128 len ceil32(32 * _47)]
            require 0, address(arg2) << 64 <= test266151307()
            require ceil32(return_data.size) + 0, address(arg2) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
            _305 = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
            if mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96] > test266151307():
                revert with 0, 65
            _310 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1
            mem[_310] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
            require 0, address(arg2) << 64 + (32 * _305) + 32 <= return_data.size
            mem[_310 + 32 len ceil32(32 * _305)] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 128 len ceil32(32 * _305)]
            _556 = 0, mem[ceil32(return_data.size) + 164 len 28]
            require 0, mem[ceil32(return_data.size) + 164 len 28] <= test266151307()
            require ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
            _559 = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
            if mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96] > test266151307():
                revert with 0, 65
            _562 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1
            mem[_562] = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
            require _556 + (32 * _559) + 32 <= return_data.size
            mem[_562 + 32 len ceil32(32 * _559)] = mem[ceil32(return_data.size) + _556 + 128 len ceil32(32 * _559)]
            _778 = mem[ceil32(return_data.size) + 192]
            require mem[ceil32(return_data.size) + 192] <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 127
            _781 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96] > test266151307():
                revert with 0, 65
            _784 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1
            mem[_784] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
            require _778 + (32 * _781) + 32 <= return_data.size
            s = _784 + 32
            idx = ceil32(return_data.size) + _778 + 128
            while idx < ceil32(return_data.size) + _778 + (32 * _781) + 128:
                require mem[idx] == bool(mem[idx])
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if arg1 != 2:
                idx = 0
                s = 0
                while idx <= ext_call.return_data[64]:
                    if idx >= _781:
                        revert with 0, 50
                    if mem[(32 * idx) + _784 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_310]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _310 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _310 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _310 + 32]
                    continue 
                mem[0] = stor5[arg1]
                mem[32] = sha3(address(arg2), 4)
                if sub_7dfe9749[address(arg2)][stor5[arg1]].field_256:
                    revert with 0, 'User already claimed!'
                if s <= 0:
                    revert with 0, 'Insufficient user balance!'
                mem[mem[64] + 4] = 0
                staticcall stor5[arg1].0xe0ebb102 with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1226 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1234 = mem[_1226]
                require mem[_1226] == mem[_1226 + 12 len 20]
                mem[mem[64] + 4] = this.address
                staticcall address(_1234).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1252] <= 0:
                    revert with 0, 'Insufficient contract balance!'
                if mem[_1252] >= s:
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = s
                    call address(_1234).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1282 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1282] == bool(mem[_1282])
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_256 = 1
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_0 = s
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_512 = block.timestamp
            else:
                mem[0] = arg1
                mem[32] = 5
                staticcall stor5[arg1].0xa38cb5b4 with:
                        gas gas_remaining wei
                       args 0, arg2
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _997 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1013 = mem[_997 + 64]
                mem[mem[64]] = 0xc311af0100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = arg2
                staticcall stor5[arg1].0xc311af01 with:
                        gas gas_remaining wei
                       args 0, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1042 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1050 = mem[_1042]
                require mem[_1042] <= test266151307()
                require _1042 + mem[_1042] + 31 < _1042 + return_data.size
                _1057 = mem[_1042 + mem[_1042]]
                if mem[_1042 + mem[_1042]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_1042 + mem[_1042]]) + 1 < 0 or _1042 + ceil32(return_data.size) + ceil32(32 * mem[_1042 + mem[_1042]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1042 + ceil32(return_data.size) + ceil32(32 * mem[_1042 + mem[_1042]]) + 1
                mem[_1042 + ceil32(return_data.size)] = _1057
                require _1050 + (32 * _1057) + 32 <= return_data.size
                mem[_1042 + ceil32(return_data.size) + 32 len ceil32(32 * _1057)] = mem[_1042 + _1050 + 32 len ceil32(32 * _1057)]
                _1199 = mem[_1042 + 32]
                require mem[_1042 + 32] <= test266151307()
                require _1042 + mem[_1042 + 32] + 31 < _1042 + return_data.size
                _1228 = mem[_1042 + mem[_1042 + 32]]
                if mem[_1042 + mem[_1042 + 32]] > test266151307():
                    revert with 0, 65
                _1238 = mem[64]
                if mem[64] + ceil32(32 * mem[_1042 + mem[_1042 + 32]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1042 + mem[_1042 + 32]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1042 + mem[_1042 + 32]]) + 1
                mem[_1238] = _1228
                require _1199 + (32 * _1228) + 32 <= return_data.size
                mem[_1238 + 32 len ceil32(32 * _1228)] = mem[_1042 + _1199 + 32 len ceil32(32 * _1228)]
                _1404 = mem[_1042 + 64]
                require mem[_1042 + 64] <= test266151307()
                require _1042 + mem[_1042 + 64] + 31 < _1042 + return_data.size
                _1407 = mem[_1042 + mem[_1042 + 64]]
                if mem[_1042 + mem[_1042 + 64]] > test266151307():
                    revert with 0, 65
                _1410 = mem[64]
                if mem[64] + ceil32(32 * mem[_1042 + mem[_1042 + 64]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1042 + mem[_1042 + 64]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1042 + mem[_1042 + 64]]) + 1
                mem[_1410] = _1407
                require _1404 + (32 * _1407) + 32 <= return_data.size
                mem[_1410 + 32 len ceil32(32 * _1407)] = mem[_1042 + _1404 + 32 len ceil32(32 * _1407)]
                _1509 = mem[_1042 + 96]
                require mem[_1042 + 96] <= test266151307()
                require _1042 + return_data.size > _1042 + mem[_1042 + 96] + 31
                _1512 = mem[_1042 + mem[_1042 + 96]]
                if mem[_1042 + mem[_1042 + 96]] > test266151307():
                    revert with 0, 65
                _1515 = mem[64]
                if mem[64] + ceil32(32 * mem[_1042 + mem[_1042 + 96]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1042 + mem[_1042 + 96]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1042 + mem[_1042 + 96]]) + 1
                mem[_1515] = _1512
                require _1509 + (32 * _1512) + 32 <= return_data.size
                s = _1515 + 32
                idx = _1042 + _1509 + 32
                while idx < _1042 + _1509 + (32 * _1512) + 32:
                    require mem[idx] == bool(mem[idx])
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                s = 0
                while idx <= _1013:
                    if idx >= _1512:
                        revert with 0, 50
                    if mem[(32 * idx) + _1515 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_1238]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _1238 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _1238 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _1238 + 32]
                    continue 
                mem[0] = stor5[arg1]
                mem[32] = sha3(address(arg2), 4)
                if sub_7dfe9749[address(arg2)][stor5[arg1]].field_256:
                    revert with 0, 'User already claimed!'
                if s <= 0:
                    revert with 0, 'Insufficient user balance!'
                mem[mem[64] + 4] = 0
                staticcall stor5[arg1].0xe0ebb102 with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1718 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1725 = mem[_1718]
                require mem[_1718] == mem[_1718 + 12 len 20]
                mem[mem[64] + 4] = this.address
                staticcall address(_1725).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1741 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1741] <= 0:
                    revert with 0, 'Insufficient contract balance!'
                if mem[_1741] >= s:
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = s
                    call address(_1725).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1767] == bool(mem[_1767])
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_256 = 1
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_0 = s
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_512 = block.timestamp
    else:
        mem[0] = arg1
        mem[32] = 5
        staticcall stor5[arg1].0xa38cb5b4 with:
                gas gas_remaining wei
               args 0, arg2
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[ceil32(return_data.size) + 96] = 0xc311af0100000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = 0
        mem[ceil32(return_data.size) + 132] = arg2
        staticcall stor5[arg1].0xc311af01 with:
                gas gas_remaining wei
               args 0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 128
        _42 = mem[ceil32(return_data.size) + 96 len 4], 0
        require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
        _45 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        require _42 + (32 * _45) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _45)] = mem[ceil32(return_data.size) + _42 + 128 len ceil32(32 * _45)]
        require 0, address(arg2) << 64 <= test266151307()
        require ceil32(return_data.size) + 0, address(arg2) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
        _306 = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
        if mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96] > test266151307():
            revert with 0, 65
        _311 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]) + 1
        mem[_311] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
        require 0, address(arg2) << 64 + (32 * _306) + 32 <= return_data.size
        mem[_311 + 32 len ceil32(32 * _306)] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 128 len ceil32(32 * _306)]
        _557 = 0, mem[ceil32(return_data.size) + 164 len 28]
        require 0, mem[ceil32(return_data.size) + 164 len 28] <= test266151307()
        require ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
        _560 = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
        if mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96] > test266151307():
            revert with 0, 65
        _563 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 1
        mem[_563] = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
        require _557 + (32 * _560) + 32 <= return_data.size
        mem[_563 + 32 len ceil32(32 * _560)] = mem[ceil32(return_data.size) + _557 + 128 len ceil32(32 * _560)]
        _779 = mem[ceil32(return_data.size) + 192]
        require mem[ceil32(return_data.size) + 192] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 127
        _782 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96] > test266151307():
            revert with 0, 65
        _785 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]) + 1
        mem[_785] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96]
        require _779 + (32 * _782) + 32 <= return_data.size
        s = _785 + 32
        idx = ceil32(return_data.size) + _779 + 128
        while idx < ceil32(return_data.size) + _779 + (32 * _782) + 128:
            require mem[idx] == bool(mem[idx])
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        if arg1 != 1:
            if arg1 != 2:
                idx = 0
                s = 0
                while idx <= ext_call.return_data[64]:
                    if idx >= _782:
                        revert with 0, 50
                    if mem[(32 * idx) + _785 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_311]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _311 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _311 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _311 + 32]
                    continue 
                mem[0] = stor5[arg1]
                mem[32] = sha3(address(arg2), 4)
                if sub_7dfe9749[address(arg2)][stor5[arg1]].field_256:
                    revert with 0, 'User already claimed!'
                if s <= 0:
                    revert with 0, 'Insufficient user balance!'
                mem[mem[64] + 4] = 0
                staticcall stor5[arg1].0xe0ebb102 with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1229 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1235 = mem[_1229]
                require mem[_1229] == mem[_1229 + 12 len 20]
                mem[mem[64] + 4] = this.address
                staticcall address(_1235).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1253 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1253] <= 0:
                    revert with 0, 'Insufficient contract balance!'
                if mem[_1253] >= s:
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = s
                    call address(_1235).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1284 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1284] == bool(mem[_1284])
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_256 = 1
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_0 = s
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_512 = block.timestamp
            else:
                mem[0] = arg1
                mem[32] = 5
                staticcall stor5[arg1].0xa38cb5b4 with:
                        gas gas_remaining wei
                       args 0, arg2
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1007 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1030 = mem[_1007 + 64]
                mem[mem[64]] = 0xc311af0100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = arg2
                staticcall stor5[arg1].0xc311af01 with:
                        gas gas_remaining wei
                       args 0, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1049 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1053 = mem[_1049]
                require mem[_1049] <= test266151307()
                require _1049 + mem[_1049] + 31 < _1049 + return_data.size
                _1061 = mem[_1049 + mem[_1049]]
                if mem[_1049 + mem[_1049]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_1049 + mem[_1049]]) + 1 < 0 or _1049 + ceil32(return_data.size) + ceil32(32 * mem[_1049 + mem[_1049]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1049 + ceil32(return_data.size) + ceil32(32 * mem[_1049 + mem[_1049]]) + 1
                mem[_1049 + ceil32(return_data.size)] = _1061
                require _1053 + (32 * _1061) + 32 <= return_data.size
                mem[_1049 + ceil32(return_data.size) + 32 len ceil32(32 * _1061)] = mem[_1049 + _1053 + 32 len ceil32(32 * _1061)]
                _1201 = mem[_1049 + 32]
                require mem[_1049 + 32] <= test266151307()
                require _1049 + mem[_1049 + 32] + 31 < _1049 + return_data.size
                _1231 = mem[_1049 + mem[_1049 + 32]]
                if mem[_1049 + mem[_1049 + 32]] > test266151307():
                    revert with 0, 65
                _1240 = mem[64]
                if mem[64] + ceil32(32 * mem[_1049 + mem[_1049 + 32]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1049 + mem[_1049 + 32]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1049 + mem[_1049 + 32]]) + 1
                mem[_1240] = _1231
                require _1201 + (32 * _1231) + 32 <= return_data.size
                mem[_1240 + 32 len ceil32(32 * _1231)] = mem[_1049 + _1201 + 32 len ceil32(32 * _1231)]
                _1405 = mem[_1049 + 64]
                require mem[_1049 + 64] <= test266151307()
                require _1049 + mem[_1049 + 64] + 31 < _1049 + return_data.size
                _1408 = mem[_1049 + mem[_1049 + 64]]
                if mem[_1049 + mem[_1049 + 64]] > test266151307():
                    revert with 0, 65
                _1411 = mem[64]
                if mem[64] + ceil32(32 * mem[_1049 + mem[_1049 + 64]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1049 + mem[_1049 + 64]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1049 + mem[_1049 + 64]]) + 1
                mem[_1411] = _1408
                require _1405 + (32 * _1408) + 32 <= return_data.size
                mem[_1411 + 32 len ceil32(32 * _1408)] = mem[_1049 + _1405 + 32 len ceil32(32 * _1408)]
                _1510 = mem[_1049 + 96]
                require mem[_1049 + 96] <= test266151307()
                require _1049 + return_data.size > _1049 + mem[_1049 + 96] + 31
                _1513 = mem[_1049 + mem[_1049 + 96]]
                if mem[_1049 + mem[_1049 + 96]] > test266151307():
                    revert with 0, 65
                _1516 = mem[64]
                if mem[64] + ceil32(32 * mem[_1049 + mem[_1049 + 96]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1049 + mem[_1049 + 96]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1049 + mem[_1049 + 96]]) + 1
                mem[_1516] = _1513
                require _1510 + (32 * _1513) + 32 <= return_data.size
                s = _1516 + 32
                idx = _1049 + _1510 + 32
                while idx < _1049 + _1510 + (32 * _1513) + 32:
                    require mem[idx] == bool(mem[idx])
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                s = 0
                while idx <= _1030:
                    if idx >= _1513:
                        revert with 0, 50
                    if mem[(32 * idx) + _1516 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_1240]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _1240 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _1240 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _1240 + 32]
                    continue 
                mem[0] = stor5[arg1]
                mem[32] = sha3(address(arg2), 4)
                if sub_7dfe9749[address(arg2)][stor5[arg1]].field_256:
                    revert with 0, 'User already claimed!'
                if s <= 0:
                    revert with 0, 'Insufficient user balance!'
                mem[mem[64] + 4] = 0
                staticcall stor5[arg1].0xe0ebb102 with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1720 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1726 = mem[_1720]
                require mem[_1720] == mem[_1720 + 12 len 20]
                mem[mem[64] + 4] = this.address
                staticcall address(_1726).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1742 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1742] <= 0:
                    revert with 0, 'Insufficient contract balance!'
                if mem[_1742] >= s:
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = s
                    call address(_1726).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1768 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1768] == bool(mem[_1768])
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_256 = 1
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_0 = s
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_512 = block.timestamp
        else:
            mem[0] = arg1
            mem[32] = 5
            staticcall stor5[arg1].0xa38cb5b4 with:
                    gas gas_remaining wei
                   args 0, arg2
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1001 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1020 = mem[_1001 + 64]
            mem[mem[64]] = 0xc311af0100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = arg2
            staticcall stor5[arg1].0xc311af01 with:
                    gas gas_remaining wei
                   args 0, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1047 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1051 = mem[_1047]
            require mem[_1047] <= test266151307()
            require _1047 + mem[_1047] + 31 < _1047 + return_data.size
            _1059 = mem[_1047 + mem[_1047]]
            if mem[_1047 + mem[_1047]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_1047 + mem[_1047]]) + 1 < 0 or _1047 + ceil32(return_data.size) + ceil32(32 * mem[_1047 + mem[_1047]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1047 + ceil32(return_data.size) + ceil32(32 * mem[_1047 + mem[_1047]]) + 1
            mem[_1047 + ceil32(return_data.size)] = _1059
            require _1051 + (32 * _1059) + 32 <= return_data.size
            mem[_1047 + ceil32(return_data.size) + 32 len ceil32(32 * _1059)] = mem[_1047 + _1051 + 32 len ceil32(32 * _1059)]
            _1202 = mem[_1047 + 32]
            require mem[_1047 + 32] <= test266151307()
            require _1047 + mem[_1047 + 32] + 31 < _1047 + return_data.size
            _1232 = mem[_1047 + mem[_1047 + 32]]
            if mem[_1047 + mem[_1047 + 32]] > test266151307():
                revert with 0, 65
            _1241 = mem[64]
            if mem[64] + ceil32(32 * mem[_1047 + mem[_1047 + 32]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1047 + mem[_1047 + 32]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_1047 + mem[_1047 + 32]]) + 1
            mem[_1241] = _1232
            require _1202 + (32 * _1232) + 32 <= return_data.size
            mem[_1241 + 32 len ceil32(32 * _1232)] = mem[_1047 + _1202 + 32 len ceil32(32 * _1232)]
            _1406 = mem[_1047 + 64]
            require mem[_1047 + 64] <= test266151307()
            require _1047 + mem[_1047 + 64] + 31 < _1047 + return_data.size
            _1409 = mem[_1047 + mem[_1047 + 64]]
            if mem[_1047 + mem[_1047 + 64]] > test266151307():
                revert with 0, 65
            _1412 = mem[64]
            if mem[64] + ceil32(32 * mem[_1047 + mem[_1047 + 64]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1047 + mem[_1047 + 64]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_1047 + mem[_1047 + 64]]) + 1
            mem[_1412] = _1409
            require _1406 + (32 * _1409) + 32 <= return_data.size
            mem[_1412 + 32 len ceil32(32 * _1409)] = mem[_1047 + _1406 + 32 len ceil32(32 * _1409)]
            _1511 = mem[_1047 + 96]
            require mem[_1047 + 96] <= test266151307()
            require _1047 + return_data.size > _1047 + mem[_1047 + 96] + 31
            _1514 = mem[_1047 + mem[_1047 + 96]]
            if mem[_1047 + mem[_1047 + 96]] > test266151307():
                revert with 0, 65
            _1517 = mem[64]
            if mem[64] + ceil32(32 * mem[_1047 + mem[_1047 + 96]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1047 + mem[_1047 + 96]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[_1047 + mem[_1047 + 96]]) + 1
            mem[_1517] = _1514
            require _1511 + (32 * _1514) + 32 <= return_data.size
            s = _1517 + 32
            idx = _1047 + _1511 + 32
            while idx < _1047 + _1511 + (32 * _1514) + 32:
                require mem[idx] == bool(mem[idx])
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if arg1 != 2:
                idx = 0
                s = 0
                while idx <= _1020:
                    if idx >= _1514:
                        revert with 0, 50
                    if mem[(32 * idx) + _1517 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_1241]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _1241 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _1241 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _1241 + 32]
                    continue 
                mem[0] = stor5[arg1]
                mem[32] = sha3(address(arg2), 4)
                if sub_7dfe9749[address(arg2)][stor5[arg1]].field_256:
                    revert with 0, 'User already claimed!'
                if s <= 0:
                    revert with 0, 'Insufficient user balance!'
                mem[mem[64] + 4] = 0
                staticcall stor5[arg1].0xe0ebb102 with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1722 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1727 = mem[_1722]
                require mem[_1722] == mem[_1722 + 12 len 20]
                mem[mem[64] + 4] = this.address
                staticcall address(_1727).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1743 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1743] <= 0:
                    revert with 0, 'Insufficient contract balance!'
                if mem[_1743] >= s:
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = s
                    call address(_1727).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1769 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1769] == bool(mem[_1769])
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_256 = 1
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_0 = s
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_512 = block.timestamp
            else:
                mem[0] = arg1
                mem[32] = 5
                staticcall stor5[arg1].0xa38cb5b4 with:
                        gas gas_remaining wei
                       args 0, arg2
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1613 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1627 = mem[_1613 + 64]
                mem[mem[64]] = 0xc311af0100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = arg2
                staticcall stor5[arg1].0xc311af01 with:
                        gas gas_remaining wei
                       args 0, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1644 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1645 = mem[_1644]
                require mem[_1644] <= test266151307()
                require _1644 + mem[_1644] + 31 < _1644 + return_data.size
                _1652 = mem[_1644 + mem[_1644]]
                if mem[_1644 + mem[_1644]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_1644 + mem[_1644]]) + 1 < 0 or _1644 + ceil32(return_data.size) + ceil32(32 * mem[_1644 + mem[_1644]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1644 + ceil32(return_data.size) + ceil32(32 * mem[_1644 + mem[_1644]]) + 1
                mem[_1644 + ceil32(return_data.size)] = _1652
                require _1645 + (32 * _1652) + 32 <= return_data.size
                mem[_1644 + ceil32(return_data.size) + 32 len ceil32(32 * _1652)] = mem[_1644 + _1645 + 32 len ceil32(32 * _1652)]
                _1696 = mem[_1644 + 32]
                require mem[_1644 + 32] <= test266151307()
                require _1644 + mem[_1644 + 32] + 31 < _1644 + return_data.size
                _1724 = mem[_1644 + mem[_1644 + 32]]
                if mem[_1644 + mem[_1644 + 32]] > test266151307():
                    revert with 0, 65
                _1731 = mem[64]
                if mem[64] + ceil32(32 * mem[_1644 + mem[_1644 + 32]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1644 + mem[_1644 + 32]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1644 + mem[_1644 + 32]]) + 1
                mem[_1731] = _1724
                require _1696 + (32 * _1724) + 32 <= return_data.size
                mem[_1731 + 32 len ceil32(32 * _1724)] = mem[_1644 + _1696 + 32 len ceil32(32 * _1724)]
                _1809 = mem[_1644 + 64]
                require mem[_1644 + 64] <= test266151307()
                require _1644 + mem[_1644 + 64] + 31 < _1644 + return_data.size
                _1810 = mem[_1644 + mem[_1644 + 64]]
                if mem[_1644 + mem[_1644 + 64]] > test266151307():
                    revert with 0, 65
                _1811 = mem[64]
                if mem[64] + ceil32(32 * mem[_1644 + mem[_1644 + 64]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1644 + mem[_1644 + 64]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1644 + mem[_1644 + 64]]) + 1
                mem[_1811] = _1810
                require _1809 + (32 * _1810) + 32 <= return_data.size
                mem[_1811 + 32 len ceil32(32 * _1810)] = mem[_1644 + _1809 + 32 len ceil32(32 * _1810)]
                _1831 = mem[_1644 + 96]
                require mem[_1644 + 96] <= test266151307()
                require _1644 + return_data.size > _1644 + mem[_1644 + 96] + 31
                _1832 = mem[_1644 + mem[_1644 + 96]]
                if mem[_1644 + mem[_1644 + 96]] > test266151307():
                    revert with 0, 65
                _1833 = mem[64]
                if mem[64] + ceil32(32 * mem[_1644 + mem[_1644 + 96]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1644 + mem[_1644 + 96]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[_1644 + mem[_1644 + 96]]) + 1
                mem[_1833] = _1832
                require _1831 + (32 * _1832) + 32 <= return_data.size
                s = _1833 + 32
                idx = _1644 + _1831 + 32
                while idx < _1644 + _1831 + (32 * _1832) + 32:
                    require mem[idx] == bool(mem[idx])
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                idx = 0
                s = 0
                while idx <= _1627:
                    if idx >= _1832:
                        revert with 0, 50
                    if mem[(32 * idx) + _1833 + 32]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[_1731]:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + _1731 + 32]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + _1731 + 32] < s:
                        revert with 0, 'SM: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _1731 + 32]
                    continue 
                mem[0] = stor5[arg1]
                mem[32] = sha3(address(arg2), 4)
                if sub_7dfe9749[address(arg2)][stor5[arg1]].field_256:
                    revert with 0, 'User already claimed!'
                if s <= 0:
                    revert with 0, 'Insufficient user balance!'
                mem[mem[64] + 4] = 0
                staticcall stor5[arg1].0xe0ebb102 with:
                        gas gas_remaining wei
                       args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1874 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1876 = mem[_1874]
                require mem[_1874] == mem[_1874 + 12 len 20]
                mem[mem[64] + 4] = this.address
                staticcall address(_1876).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1881 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1881] <= 0:
                    revert with 0, 'Insufficient contract balance!'
                if mem[_1881] >= s:
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = s
                    call address(_1876).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1889] == bool(mem[_1889])
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_256 = 1
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_0 = s
                    sub_7dfe9749[address(arg2)][stor5[arg1]].field_512 = block.timestamp
    emit 0xeebfdebc: address(arg2), s
}



}
