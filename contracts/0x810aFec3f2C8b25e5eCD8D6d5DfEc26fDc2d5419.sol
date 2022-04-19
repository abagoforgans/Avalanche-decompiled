contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ccd4b54(?)
#  - sub_28353013(?)
#  - sub_d6effb39(?)
#  - _fallback()
#
address stor0;
mapping of uint256 tokenBalances;
mapping of uint8 sub_5691af13;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 sub_78e3d0fc;
uint256 sub_19339e04;
address sub_3ef67e9fAddress;
address sub_6c302b9dAddress;
address sub_8f135a73Address;
address sub_f5e41055Address;
address sub_d64b21caAddress;
array of address sub_bc22666b;
array of address cachedWallets;
uint256 sub_d7edd46a;
uint256 sub_7a3fdbc9;
uint256 sub_1f28e938;
uint256 sub_504def87;
uint256 sub_cdd32043;
uint256 sub_ab743767;

function sub_19339e04(?) {
    return sub_19339e04
}

function sub_1ef1fbf3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_1f28e938(?) {
    return sub_1f28e938
}

function sub_3ef67e9f(?) {
    return sub_3ef67e9fAddress
}

function tokenBalances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return tokenBalances[arg1][arg2]
}

function sub_504def87(?) {
    return sub_504def87
}

function sub_5691af13(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_5691af13[arg1][arg2]
}

function sub_6c302b9d(?) {
    return sub_6c302b9dAddress
}

function sub_78e3d0fc(?) {
    return sub_78e3d0fc
}

function sub_7a3fdbc9(?) {
    return sub_7a3fdbc9
}

function sub_8f135a73(?) {
    return sub_8f135a73Address
}

function sub_ab743767(?) {
    return sub_ab743767
}

function sub_bc22666b(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_bc22666b.length
    return address(sub_bc22666b[arg1])
}

function sub_cdd32043(?) {
    return sub_cdd32043
}

function sub_d64b21ca(?) {
    return sub_d64b21caAddress
}

function sub_d7edd46a(?) {
    return sub_d7edd46a
}

function sub_e759b6fd(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor4[arg1][arg2])
}

function sub_f5e41055(?) {
    return sub_f5e41055Address
}

function cachedWallets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < cachedWallets.length
    return address(cachedWallets[arg1])
}

function sub_ac7e4ecf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'not allowed'
    stor3[address(arg1)] = 0
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'owner: caller is not the owner'
    stor0 = arg1
    stor3[address(arg1)] = 1
}

function withdrawETH() {
    if stor0 != msg.sender:
        revert with 0, 'owner: caller is not the owner'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_47cb05aa(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint8(cd[36])
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'not allowed'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[1] == address(('cd', 4)[1])
    sub_5691af13[address(('cd', 4)[0])][address(('cd', 4)[1])] = uint8(cd[36])
}

function sub_15370bf4(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'not allowed'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not arg3:
        stor4[address(arg2)][address(arg1)] = 0
    else:
        stor4[address(arg2)][address(arg1)] = 1
}

function sub_1d9ed215(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'owner: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'owner: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawTokenAmount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'owner: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 >= ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor0, arg2
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 0, 17
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 * 10^uint8(ext_call.return_data[0]) >= ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor0, arg2 * 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and s * t > -1 / arg2:
                revert with 0, 17
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg2 * s * t >= ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor0, arg2 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5424c157(?) {
    require calldata.size - 4 >= 288
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require test266151307() >= cd[68]
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'not allowed'
    sub_d64b21caAddress = address(cd[4])
    sub_8f135a73Address = address(cd[4])
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
    sub_f5e41055Address = 0
    mem[ceil32(return_data.size) + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128] = 0
    if not sub_f5e41055Address:
        if not ('cd', 36).length:
            revert with 0, 50
        if 1 >= ('cd', 36).length:
            revert with 0, 50
        require ext_code.size(sub_3ef67e9fAddress)
        staticcall sub_3ef67e9fAddress.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(mem[ceil32(return_data.size) + 128]), mem[ceil32(return_data.size) + 172 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        sub_f5e41055Address = ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20]:
            sub_6c302b9dAddress = sub_f5e41055Address
    sub_bc22666b.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_bc22666b.length > idx:
            uint256(sub_bc22666b[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            address(sub_bc22666b[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_bc22666b.length > idx:
            uint256(sub_bc22666b[idx]) = 0
            idx = idx + 1
            continue 
    cachedWallets.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while cachedWallets.length > idx:
            uint256(cachedWallets[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            address(cachedWallets[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while cachedWallets.length > idx:
            uint256(cachedWallets[idx]) = 0
            idx = idx + 1
            continue 
    sub_d7edd46a = cd[100]
    sub_7a3fdbc9 = cd[132]
    sub_1f28e938 = cd[164]
    sub_504def87 = cd[196]
    sub_cdd32043 = cd[228]
    sub_ab743767 = cd[260]
}

function sub_3c65c509(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 3
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'not allowed'
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[100] = address(cd[36])
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(cd[36])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No tokens wallet'
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128] = 0
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).totalSupply() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    if ext_call.return_data[0] and cd[132] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    idx = ext_call.return_data[0]
    while idx:
        if 0 >= ('cd', 100).length:
            revert with 0, 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = this.address
        if ext_call.return_data[0] * cd[132] / 10000 > idx:
            mem[mem[64] + 68] = idx
            require ext_code.size(address(('cd', 100)[0]))
            call address(('cd', 100)[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(cd[36]), this.address, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _74 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_74] == bool(mem[_74])
            if idx < idx:
                revert with 0, 17
            idx = 0
            continue 
        mem[mem[64] + 68] = ext_call.return_data[0] * cd[132] / 10000
        require ext_code.size(address(('cd', 100)[0]))
        call address(('cd', 100)[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(cd[36]), this.address, ext_call.return_data[0] * cd[132] / 10000
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_75] == bool(mem[_75])
        if idx < ext_call.return_data[0] * cd[132] / 10000:
            revert with 0, 17
        idx = idx - (ext_call.return_data[0] * cd[132] / 10000)
        continue 
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _68 = mem[_65]
    _71 = mem[64]
    mem[64] = mem[64] + 64
    mem[_71] = _68
    mem[_71 + 32] = ext_call.return_data[0] * cd[132] / 10000
    if not _68:
        revert with 0, 'No tokens contract'
    if not ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if stor4[address(cd[4])][address(('cd', 100)[0])]:
        # nil
    else:
        if 0 >= ('cd', 100).length:
            revert with 0, 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        mem[0] = msg.sender
        mem[32] = 3
        if bool(stor3[msg.sender]) != 1:
            revert with 0, 'not allowed'
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = -1
        require ext_code.size(address(('cd', 100)[0]))
        call address(('cd', 100)[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_95] == bool(mem[_95])
        stor4[address(cd[4])][address(('cd', 100)[0])] = 1
        # nil
}



}
