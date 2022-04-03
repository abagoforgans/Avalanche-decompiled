contract main {




// =====================  Runtime code  =====================


const sub_0053d555(?) = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const weth = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab


address owner;
array of address stor1;
mapping of uint8 stor2;
array of struct swapPath;
mapping of address sub_666cddb5;
mapping of struct sub_ed824cbc;
mapping of address stor99;

function sub_14b78b61(?) payable {
    return stor1.length
}

function swapPath(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 < uint256(swapPath[arg1][arg2].field_0)
    return swapPath[arg1][arg2][arg3].field_0
}

function sub_3979bc36(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function sub_666cddb5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_666cddb5[arg1][arg2]
}

function owner() payable {
    return owner
}

function sub_ed824cbc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_ed824cbc[arg1][arg2].field_0, sub_ed824cbc[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_4df7f6e2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor2[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'required auth'
    stor2[address(arg1)] = uint8(bool(arg2))
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

function sub_d33c4021(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not uint256(swapPath[address(arg1)][address(arg2)].field_0):
        mem[128] = address(arg1)
        mem[160] = address(arg2)
        mem[192] = stor1.length
        idx = 0
        s = 288
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return stor1.length, Array(len=2, data=mem[288 len 64])
    if uint256(swapPath[address(arg1)][address(arg2)].field_0):
        mem[128] = swapPath[address(arg1)][address(arg2)].field_0
        idx = 128
        s = 0
        while (32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 96 > idx:
            mem[idx + 32] = swapPath[address(arg1)][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 128] = sub_666cddb5[address(arg1)][address(arg2)]
    mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 160] = 64
    mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 192] = uint256(swapPath[address(arg1)][address(arg2)].field_0)
    idx = 0
    s = (32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 224
    t = 128
    while idx < uint256(swapPath[address(arg1)][address(arg2)].field_0):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 128
       len (96 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 96
}

function sub_b4a47c39(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 68).length) + 97 > test266151307() or ceil32(32 * ('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    if not stor2[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'required auth'
    if address(cd[100]) == address(cd[132]):
        revert with 0, 'same addr'
    mem[ceil32(32 * ('cd', 68).length) + 97] = address(cd[4])
    mem[ceil32(32 * ('cd', 68).length) + 129] = address(cd[36])
    sub_ed824cbc[address(cd[100])][address(cd[132])].field_0 = address(cd[4])
    sub_ed824cbc[address(cd[100])][address(cd[132])].field_256 = address(cd[36])
    uint256(swapPath[address(cd[100])][address(cd[132])].field_0) = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while uint256(swapPath[address(cd[100])][address(cd[132])].field_0) > idx:
            uint256(swapPath[address(cd[100])][address(cd[132])][idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 68).length) + 128 > idx:
            swapPath[address(cd[100])][address(cd[132])][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while uint256(swapPath[address(cd[100])][address(cd[132])].field_0) > idx:
            uint256(swapPath[address(cd[100])][address(cd[132])][idx].field_0) = 0
            idx = idx + 1
            continue 
    sub_666cddb5[address(cd[100])][address(cd[132])] = address(cd[4])
}

function sub_0e69909c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(arg1) != address(arg2):
        if not uint256(swapPath[address(arg1)][address(arg2)].field_0):
            if address(arg1) != address(arg2):
                require ext_code.size(sub_ed824cbc[address(arg1)][address(arg2)].field_256)
                staticcall sub_ed824cbc[address(arg1)][address(arg2)].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][address(arg2)].field_0, 
                       sub_ed824cbc[address(arg1)][address(arg2)].field_256,
                       address(ext_call.return_data[0])
            if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256)
                staticcall sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0, 
                       sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256,
                       address(ext_call.return_data[0])
            require ext_code.size(sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256)
            staticcall sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0, 
                   sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256,
                   address(ext_call.return_data[0])
        if not uint256(swapPath[address(arg1)][address(arg2)].field_0):
            if uint256(swapPath[address(arg1)][address(arg2)].field_0) <= 2:
                if address(arg1) != address(arg2):
                    require ext_code.size(sub_ed824cbc[address(arg1)][address(arg2)].field_256)
                    staticcall sub_ed824cbc[address(arg1)][address(arg2)].field_256.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    return sub_ed824cbc[address(arg1)][address(arg2)].field_0, 
                           sub_ed824cbc[address(arg1)][address(arg2)].field_256,
                           address(ext_call.return_data[0])
                if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256)
                    staticcall sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    return sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0, 
                           sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256,
                           address(ext_call.return_data[0])
                require ext_code.size(sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256)
                staticcall sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0, 
                       sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256,
                       address(ext_call.return_data[0])
            if 0 >= uint256(swapPath[address(arg1)][address(arg2)].field_0):
                revert with 'NH{q', 50
            _45 = sha3(mem[140 len 20], 5)
            if 1 >= uint256(swapPath[address(arg1)][address(arg2)].field_0):
                revert with 'NH{q', 50
            mem[0] = mem[172 len 20]
            mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 128] = sub_ed824cbc[mem[140 len 20]][mem[172 len 20]].field_0
            mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 160] = stor1[('map', ('mem', ('range', 0, 32)), ('var', '_45'))]
            if not uint256(swapPath[address(arg1)][address(arg2)].field_0):
                revert with 'NH{q', 50
            if 1 >= uint256(swapPath[address(arg1)][address(arg2)].field_0):
                revert with 'NH{q', 50
            mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 196] = mem[140 len 20]
            mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 228] = mem[172 len 20]
            require ext_code.size(stor1[('map', ('mem', ('range', 0, 32)), ('var', '_45'))])
            staticcall stor1[('map', ('mem', ('range', 0, 32)), ('var', '_45'))].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 196 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return stor[_45][mem[0]], stor1[('map', ('mem', ('range', 0, 32)), ('var', '_45'))], address(ext_call.return_data[0])
        mem[128] = swapPath[address(arg1)][address(arg2)].field_0
        idx = 128
        s = 0
        while (32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 96 > idx:
            mem[idx + 32] = swapPath[address(arg1)][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint256(swapPath[address(arg1)][address(arg2)].field_0) <= 2:
            if address(arg1) != address(arg2):
                require ext_code.size(sub_ed824cbc[address(arg1)][address(arg2)].field_256)
                staticcall sub_ed824cbc[address(arg1)][address(arg2)].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][address(arg2)].field_0, 
                       sub_ed824cbc[address(arg1)][address(arg2)].field_256,
                       address(ext_call.return_data[0])
            if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256)
                staticcall sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0, 
                       sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256,
                       address(ext_call.return_data[0])
            require ext_code.size(sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256)
            staticcall sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0, 
                   sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256,
                   address(ext_call.return_data[0])
        if 0 >= uint256(swapPath[address(arg1)][address(arg2)].field_0):
            revert with 'NH{q', 50
        if 1 >= uint256(swapPath[address(arg1)][address(arg2)].field_0):
            revert with 'NH{q', 50
        _342 = sha3(mem[172 len 20], sha3(mem[140 len 20], 5))
        mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 128] = sub_ed824cbc[mem[140 len 20]][mem[172 len 20]].field_0
        mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 160] = stor1[_342]
        if not uint256(swapPath[address(arg1)][address(arg2)].field_0):
            revert with 'NH{q', 50
        if 1 >= uint256(swapPath[address(arg1)][address(arg2)].field_0):
            revert with 'NH{q', 50
        mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 196] = mem[140 len 20]
        mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 228] = mem[172 len 20]
        require ext_code.size(stor1[_342])
        staticcall stor1[_342].getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * uint256(swapPath[address(arg1)][address(arg2)].field_0)) + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        return stor[_342], stor1[_342], address(ext_call.return_data[0])
    if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        if not uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0):
            if address(arg1) != address(arg2):
                require ext_code.size(sub_ed824cbc[address(arg1)][address(arg2)].field_256)
                staticcall sub_ed824cbc[address(arg1)][address(arg2)].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][address(arg2)].field_0, 
                       sub_ed824cbc[address(arg1)][address(arg2)].field_256,
                       address(ext_call.return_data[0])
            if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256)
                staticcall sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0, 
                       sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256,
                       address(ext_call.return_data[0])
            require ext_code.size(sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256)
            staticcall sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0, 
                   sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256,
                   address(ext_call.return_data[0])
        if not uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0):
            if uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) <= 2:
                if address(arg1) != address(arg2):
                    require ext_code.size(sub_ed824cbc[address(arg1)][address(arg2)].field_256)
                    staticcall sub_ed824cbc[address(arg1)][address(arg2)].field_256.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    return sub_ed824cbc[address(arg1)][address(arg2)].field_0, 
                           sub_ed824cbc[address(arg1)][address(arg2)].field_256,
                           address(ext_call.return_data[0])
                if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    require ext_code.size(sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256)
                    staticcall sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    return sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0, 
                           sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256,
                           address(ext_call.return_data[0])
                require ext_code.size(sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256)
                staticcall sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0, 
                       sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256,
                       address(ext_call.return_data[0])
            if 0 >= uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0):
                revert with 'NH{q', 50
            _72 = sha3(mem[140 len 20], 5)
            if 1 >= uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0):
                revert with 'NH{q', 50
            mem[0] = mem[172 len 20]
            mem[(32 * uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)) + 128] = sub_ed824cbc[mem[140 len 20]][mem[172 len 20]].field_0
            mem[(32 * uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)) + 160] = stor1[('map', ('mem', ('range', 0, 32)), ('var', '_72'))]
            if not uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0):
                revert with 'NH{q', 50
            if 1 >= uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0):
                revert with 'NH{q', 50
            mem[(32 * uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)) + 196] = mem[140 len 20]
            mem[(32 * uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)) + 228] = mem[172 len 20]
            require ext_code.size(stor1[('map', ('mem', ('range', 0, 32)), ('var', '_72'))])
            staticcall stor1[('map', ('mem', ('range', 0, 32)), ('var', '_72'))].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[(32 * uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)) + 196 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return stor[_72][mem[0]], stor1[('map', ('mem', ('range', 0, 32)), ('var', '_72'))], address(ext_call.return_data[0])
        mem[128] = swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0
        idx = 128
        s = 0
        while (32 * uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)) + 96 > idx:
            mem[idx + 32] = swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0) <= 2:
            if address(arg1) != address(arg2):
                require ext_code.size(sub_ed824cbc[address(arg1)][address(arg2)].field_256)
                staticcall sub_ed824cbc[address(arg1)][address(arg2)].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][address(arg2)].field_0, 
                       sub_ed824cbc[address(arg1)][address(arg2)].field_256,
                       address(ext_call.return_data[0])
            if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256)
                staticcall sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0, 
                       sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256,
                       address(ext_call.return_data[0])
            require ext_code.size(sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256)
            staticcall sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0, 
                   sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256,
                   address(ext_call.return_data[0])
        if 0 >= uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0):
            revert with 'NH{q', 50
        if 1 >= uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0):
            revert with 'NH{q', 50
        _347 = sha3(mem[172 len 20], sha3(mem[140 len 20], 5))
        mem[(32 * uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)) + 128] = sub_ed824cbc[mem[140 len 20]][mem[172 len 20]].field_0
        mem[(32 * uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)) + 160] = stor1[_347]
        if not uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0):
            revert with 'NH{q', 50
        if 1 >= uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0):
            revert with 'NH{q', 50
        mem[(32 * uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)) + 196] = mem[140 len 20]
        mem[(32 * uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)) + 228] = mem[172 len 20]
        require ext_code.size(stor1[_347])
        staticcall stor1[_347].getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * uint256(swapPath[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0)) + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        return stor[_347], stor1[_347], address(ext_call.return_data[0])
    if not uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0):
        if address(arg1) != address(arg2):
            require ext_code.size(sub_ed824cbc[address(arg1)][address(arg2)].field_256)
            staticcall sub_ed824cbc[address(arg1)][address(arg2)].field_256.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return sub_ed824cbc[address(arg1)][address(arg2)].field_0, 
                   sub_ed824cbc[address(arg1)][address(arg2)].field_256,
                   address(ext_call.return_data[0])
        if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            require ext_code.size(sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256)
            staticcall sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0, 
                   sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256,
                   address(ext_call.return_data[0])
        require ext_code.size(sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256)
        staticcall sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        return sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0, 
               sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256,
               address(ext_call.return_data[0])
    if not uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0):
        if uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0) <= 2:
            if address(arg1) != address(arg2):
                require ext_code.size(sub_ed824cbc[address(arg1)][address(arg2)].field_256)
                staticcall sub_ed824cbc[address(arg1)][address(arg2)].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][address(arg2)].field_0, 
                       sub_ed824cbc[address(arg1)][address(arg2)].field_256,
                       address(ext_call.return_data[0])
            if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                require ext_code.size(sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256)
                staticcall sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0, 
                       sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256,
                       address(ext_call.return_data[0])
            require ext_code.size(sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256)
            staticcall sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0, 
                   sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256,
                   address(ext_call.return_data[0])
        if 0 >= uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0):
            revert with 'NH{q', 50
        _81 = sha3(mem[140 len 20], 5)
        if 1 >= uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0):
            revert with 'NH{q', 50
        mem[0] = mem[172 len 20]
        mem[(32 * uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0)) + 128] = sub_ed824cbc[mem[140 len 20]][mem[172 len 20]].field_0
        mem[(32 * uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0)) + 160] = stor1[('map', ('mem', ('range', 0, 32)), ('var', '_81'))]
        if not uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0):
            revert with 'NH{q', 50
        if 1 >= uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0):
            revert with 'NH{q', 50
        mem[(32 * uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0)) + 196] = mem[140 len 20]
        mem[(32 * uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0)) + 228] = mem[172 len 20]
        require ext_code.size(stor1[('map', ('mem', ('range', 0, 32)), ('var', '_81'))])
        staticcall stor1[('map', ('mem', ('range', 0, 32)), ('var', '_81'))].getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0)) + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        return stor[_81][mem[0]], stor1[('map', ('mem', ('range', 0, 32)), ('var', '_81'))], address(ext_call.return_data[0])
    mem[128] = swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0
    idx = 128
    s = 0
    while (32 * uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0)) + 96 > idx:
        mem[idx + 32] = swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0) <= 2:
        if address(arg1) != address(arg2):
            require ext_code.size(sub_ed824cbc[address(arg1)][address(arg2)].field_256)
            staticcall sub_ed824cbc[address(arg1)][address(arg2)].field_256.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return sub_ed824cbc[address(arg1)][address(arg2)].field_0, 
                   sub_ed824cbc[address(arg1)][address(arg2)].field_256,
                   address(ext_call.return_data[0])
        if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            require ext_code.size(sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256)
            staticcall sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_0, 
                   sub_ed824cbc[address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].field_256,
                   address(ext_call.return_data[0])
        require ext_code.size(sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256)
        staticcall sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        return sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0, 
               sub_ed824cbc[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_256,
               address(ext_call.return_data[0])
    if 0 >= uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0):
        revert with 'NH{q', 50
    if 1 >= uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0):
        revert with 'NH{q', 50
    _352 = sha3(mem[172 len 20], sha3(mem[140 len 20], 5))
    mem[(32 * uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0)) + 128] = sub_ed824cbc[mem[140 len 20]][mem[172 len 20]].field_0
    mem[(32 * uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0)) + 160] = stor1[_352]
    if not uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0):
        revert with 'NH{q', 50
    if 1 >= uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0):
        revert with 'NH{q', 50
    mem[(32 * uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0)) + 196] = mem[140 len 20]
    mem[(32 * uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0)) + 228] = mem[172 len 20]
    require ext_code.size(stor1[_352])
    staticcall stor1[_352].getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args mem[(32 * uint256(swapPath[address(arg1)][0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab].field_0)) + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return stor[_352], stor1[_352], address(ext_call.return_data[0])
}



}
