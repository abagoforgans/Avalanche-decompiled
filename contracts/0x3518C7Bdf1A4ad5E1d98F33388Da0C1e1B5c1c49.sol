contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ccd4b54(?)
#  - sub_28353013(?)
#  - sub_3c65c509(?)
#  - sub_d6effb39(?)
#  - _fallback()
#
address stor0;
mapping of uint256 tokenBalances;
uint8 stor2;
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
uint256 sub_524f2ce5;

function active() {
    return bool(stor2)
}

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

function sub_524f2ce5(?) {
    return sub_524f2ce5
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

function sub_e94c7a6e(?) {
    require calldata.size - 4 >= 32
    sub_524f2ce5 = arg1
}

function setBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'not allowed'
    sub_78e3d0fc = arg1
}

function setTimestamp(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'not allowed'
    sub_19339e04 = arg1
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
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            revert with 0, 'owner: caller is not the owner'
    stor0 = arg1
    stor3[address(arg1)] = 1
}

function withdrawETH() {
    if stor0 != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
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
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
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
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
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
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            revert with 0, 'owner: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
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
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            revert with 0, 'owner: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, arg2
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 0, 17
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
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
            call arg1.0xa9059cbb with:
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
    stor2 = 1
}



}
