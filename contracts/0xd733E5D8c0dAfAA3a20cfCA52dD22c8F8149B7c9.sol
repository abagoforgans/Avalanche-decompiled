contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
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

function recoverEth() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7043b528(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_322f6377(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 997 * arg4 / 997 != arg4:
        revert with 0, 'ds-math-mul-overflow'
    if arg2 < arg3:
        if arg2 == arg2:
            if not ext_call.return_data[50 len 14]:
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                    return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
            else:
                if ext_call.return_data[50 len 14]:
                    if 997 * arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                        return (997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
        else:
            if not ext_call.return_data[18 len 14]:
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                    return (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
            else:
                if ext_call.return_data[18 len 14]:
                    if 997 * arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                        return (997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
    else:
        if arg2 == arg3:
            if not ext_call.return_data[50 len 14]:
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                    return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
            else:
                if ext_call.return_data[50 len 14]:
                    if 997 * arg4 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg4):
                        return (997 * arg4 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg4))
        else:
            if not ext_call.return_data[18 len 14]:
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                    return (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
            else:
                if ext_call.return_data[18 len 14]:
                    if 997 * arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg4):
                        return (997 * arg4 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg4))
    revert
}

function sub_78710b76(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 132] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            if not idx:
                require idx + 1 < ('cd', 36).length
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if 997 * cd[68] / 997 != cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
            else:
                if idx != ('cd', 36).length - 1:
                    require idx + 1 < ('cd', 36).length
                    require idx - 1 < ('cd', 36).length
                    _160 = mem[(32 * idx - 1) + 128]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * _160 / 997 != _160:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160)
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * _160 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * _160:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _160 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160)
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160)
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * _160 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * _160:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _160 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160)
                    else:
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160)
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * _160 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * _160:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _160 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _160)
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160)
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * _160 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * _160:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _160 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _160)
                else:
                    require 0 < ('cd', 36).length
                    require idx - 1 < ('cd', 36).length
                    _161 = mem[(32 * idx - 1) + 128]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * _161 / 997 != _161:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161)
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * _161 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * _161:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _161 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161)
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161)
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * _161 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * _161:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _161 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161)
                    else:
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(('cd', 36)[0]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161)
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * _161 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * _161:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _161 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _161)
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161)
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * _161 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * _161:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _161 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _161)
            idx = idx + 1
            continue 
        require 0 < ('cd', 36).length
        require 0 < ('cd', 4).length
        mem[(32 * ('cd', 36).length) + 132] = address(('cd', 4)[0])
        mem[(32 * ('cd', 36).length) + 164] = cd[68]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(('cd', 4)[0]), cd[68]
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if idx == ('cd', 36).length - 1:
                _713 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                require 0 < ('cd', 36).length
                require idx < ('cd', 4).length
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _716 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_716 + 36] = 0
                        mem[_716 + 68] = _713
                        mem[_716 + 100] = this.address
                        mem[_716 + 132] = 128
                        mem[_716 + 164] = mem[_716]
                        s = 0
                        while s < mem[_716]:
                            mem[_716 + s + 196] = mem[_716 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_716] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _713, address(this.address), 128, mem[_716 + 164 len mem[_716] + 32]
                        else:
                            mem[floor32(mem[_716]) + _716 + 196] = mem[floor32(mem[_716]) + _716 + -(mem[_716] % 32) + 228 len mem[_716] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _713, address(this.address), 128, mem[_716], mem[_716 + 196 len floor32(mem[_716]) + 32]
                    else:
                        _717 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_717 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_717 + 36] = _713
                        mem[_717 + 68] = 0
                        mem[_717 + 100] = this.address
                        mem[_717 + 132] = 128
                        mem[_717 + 164] = mem[_717]
                        s = 0
                        while s < mem[_717]:
                            mem[_717 + s + 196] = mem[_717 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_717] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _713, 0, address(this.address), 128, mem[_717 + 164 len mem[_717] + 32]
                        else:
                            mem[floor32(mem[_717]) + _717 + 196] = mem[floor32(mem[_717]) + _717 + -(mem[_717] % 32) + 228 len mem[_717] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _713, 0, address(this.address), 128, mem[_717], mem[_717 + 196 len floor32(mem[_717]) + 32]
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(('cd', 36)[0]):
                        _718 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_718 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_718 + 36] = 0
                        mem[_718 + 68] = _713
                        mem[_718 + 100] = this.address
                        mem[_718 + 132] = 128
                        mem[_718 + 164] = mem[_718]
                        s = 0
                        while s < mem[_718]:
                            mem[_718 + s + 196] = mem[_718 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_718] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _713, address(this.address), 128, mem[_718 + 164 len mem[_718] + 32]
                        else:
                            mem[floor32(mem[_718]) + _718 + 196] = mem[floor32(mem[_718]) + _718 + -(mem[_718] % 32) + 228 len mem[_718] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _713, address(this.address), 128, mem[_718], mem[_718 + 196 len floor32(mem[_718]) + 32]
                    else:
                        _719 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_719 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_719 + 36] = _713
                        mem[_719 + 68] = 0
                        mem[_719 + 100] = this.address
                        mem[_719 + 132] = 128
                        mem[_719 + 164] = mem[_719]
                        s = 0
                        while s < mem[_719]:
                            mem[_719 + s + 196] = mem[_719 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_719] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _713, 0, address(this.address), 128, mem[_719 + 164 len mem[_719] + 32]
                        else:
                            mem[floor32(mem[_719]) + _719 + 196] = mem[floor32(mem[_719]) + _719 + -(mem[_719] % 32) + 228 len mem[_719] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _713, 0, address(this.address), 128, mem[_719], mem[_719 + 196 len floor32(mem[_719]) + 32]
            else:
                _712 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                require idx + 1 < ('cd', 36).length
                require idx < ('cd', 4).length
                require idx + 1 < ('cd', 4).length
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _724 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_724 + 36] = 0
                        mem[_724 + 68] = _712
                        mem[_724 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_724 + 132] = 128
                        mem[_724 + 164] = mem[_724]
                        s = 0
                        while s < mem[_724]:
                            mem[_724 + s + 196] = mem[_724 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_724] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_724 + 164 len mem[_724] + 32]
                        else:
                            mem[floor32(mem[_724]) + _724 + 196] = mem[floor32(mem[_724]) + _724 + -(mem[_724] % 32) + 228 len mem[_724] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_724], mem[_724 + 196 len floor32(mem[_724]) + 32]
                    else:
                        _725 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_725 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_725 + 36] = _712
                        mem[_725 + 68] = 0
                        mem[_725 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_725 + 132] = 128
                        mem[_725 + 164] = mem[_725]
                        s = 0
                        while s < mem[_725]:
                            mem[_725 + s + 196] = mem[_725 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_725] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _712, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_725 + 164 len mem[_725] + 32]
                        else:
                            mem[floor32(mem[_725]) + _725 + 196] = mem[floor32(mem[_725]) + _725 + -(mem[_725] % 32) + 228 len mem[_725] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _712, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_725], mem[_725 + 196 len floor32(mem[_725]) + 32]
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _726 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_726 + 36] = 0
                        mem[_726 + 68] = _712
                        mem[_726 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_726 + 132] = 128
                        mem[_726 + 164] = mem[_726]
                        s = 0
                        while s < mem[_726]:
                            mem[_726 + s + 196] = mem[_726 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_726] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_726 + 164 len mem[_726] + 32]
                        else:
                            mem[floor32(mem[_726]) + _726 + 196] = mem[floor32(mem[_726]) + _726 + -(mem[_726] % 32) + 228 len mem[_726] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _712, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_726], mem[_726 + 196 len floor32(mem[_726]) + 32]
                    else:
                        _727 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_727 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_727 + 36] = _712
                        mem[_727 + 68] = 0
                        mem[_727 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_727 + 132] = 128
                        mem[_727 + 164] = mem[_727]
                        s = 0
                        while s < mem[_727]:
                            mem[_727 + s + 196] = mem[_727 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_727] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _712, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_727 + 164 len mem[_727] + 32]
                        else:
                            mem[floor32(mem[_727]) + _727 + 196] = mem[floor32(mem[_727]) + _727 + -(mem[_727] % 32) + 228 len mem[_727] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _712, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_727], mem[_727 + 196 len floor32(mem[_727]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 132] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            if not idx:
                require idx + 1 < ('cd', 36).length
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if 997 * cd[68] / 997 != cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
            else:
                if idx != ('cd', 36).length - 1:
                    require idx + 1 < ('cd', 36).length
                    require idx - 1 < ('cd', 36).length
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * mem[(32 * idx - 1) + 128] / 997 != mem[(32 * idx - 1) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                    else:
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                else:
                    require 0 < ('cd', 36).length
                    require idx - 1 < ('cd', 36).length
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * mem[(32 * idx - 1) + 128] / 997 != mem[(32 * idx - 1) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                    else:
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(('cd', 36)[0]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
            idx = idx + 1
            continue 
        require 0 < ('cd', 36).length
        require 0 < ('cd', 4).length
        mem[(32 * ('cd', 36).length) + 132] = address(('cd', 4)[0])
        mem[(32 * ('cd', 36).length) + 164] = cd[68]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(('cd', 4)[0]), cd[68]
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if idx == ('cd', 36).length - 1:
                _715 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                require 0 < ('cd', 36).length
                require idx < ('cd', 4).length
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _720 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_720 + 36] = 0
                        mem[_720 + 68] = _715
                        mem[_720 + 100] = this.address
                        mem[_720 + 132] = 128
                        mem[_720 + 164] = mem[_720]
                        s = 0
                        while s < mem[_720]:
                            mem[_720 + s + 196] = mem[_720 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_720] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _715, address(this.address), 128, mem[_720 + 164 len mem[_720] + 32]
                        else:
                            mem[floor32(mem[_720]) + _720 + 196] = mem[floor32(mem[_720]) + _720 + -(mem[_720] % 32) + 228 len mem[_720] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _715, address(this.address), 128, mem[_720], mem[_720 + 196 len floor32(mem[_720]) + 32]
                    else:
                        _721 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_721 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_721 + 36] = _715
                        mem[_721 + 68] = 0
                        mem[_721 + 100] = this.address
                        mem[_721 + 132] = 128
                        mem[_721 + 164] = mem[_721]
                        s = 0
                        while s < mem[_721]:
                            mem[_721 + s + 196] = mem[_721 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_721] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _715, 0, address(this.address), 128, mem[_721 + 164 len mem[_721] + 32]
                        else:
                            mem[floor32(mem[_721]) + _721 + 196] = mem[floor32(mem[_721]) + _721 + -(mem[_721] % 32) + 228 len mem[_721] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _715, 0, address(this.address), 128, mem[_721], mem[_721 + 196 len floor32(mem[_721]) + 32]
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(('cd', 36)[0]):
                        _722 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_722 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_722 + 36] = 0
                        mem[_722 + 68] = _715
                        mem[_722 + 100] = this.address
                        mem[_722 + 132] = 128
                        mem[_722 + 164] = mem[_722]
                        s = 0
                        while s < mem[_722]:
                            mem[_722 + s + 196] = mem[_722 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_722] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _715, address(this.address), 128, mem[_722 + 164 len mem[_722] + 32]
                        else:
                            mem[floor32(mem[_722]) + _722 + 196] = mem[floor32(mem[_722]) + _722 + -(mem[_722] % 32) + 228 len mem[_722] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _715, address(this.address), 128, mem[_722], mem[_722 + 196 len floor32(mem[_722]) + 32]
                    else:
                        _723 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_723 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_723 + 36] = _715
                        mem[_723 + 68] = 0
                        mem[_723 + 100] = this.address
                        mem[_723 + 132] = 128
                        mem[_723 + 164] = mem[_723]
                        s = 0
                        while s < mem[_723]:
                            mem[_723 + s + 196] = mem[_723 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_723] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _715, 0, address(this.address), 128, mem[_723 + 164 len mem[_723] + 32]
                        else:
                            mem[floor32(mem[_723]) + _723 + 196] = mem[floor32(mem[_723]) + _723 + -(mem[_723] % 32) + 228 len mem[_723] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _715, 0, address(this.address), 128, mem[_723], mem[_723 + 196 len floor32(mem[_723]) + 32]
            else:
                _714 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                require idx + 1 < ('cd', 36).length
                require idx < ('cd', 4).length
                require idx + 1 < ('cd', 4).length
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _740 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_740 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_740 + 36] = 0
                        mem[_740 + 68] = _714
                        mem[_740 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_740 + 132] = 128
                        mem[_740 + 164] = mem[_740]
                        s = 0
                        while s < mem[_740]:
                            mem[_740 + s + 196] = mem[_740 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_740] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _714, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_740 + 164 len mem[_740] + 32]
                        else:
                            mem[floor32(mem[_740]) + _740 + 196] = mem[floor32(mem[_740]) + _740 + -(mem[_740] % 32) + 228 len mem[_740] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _714, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_740], mem[_740 + 196 len floor32(mem[_740]) + 32]
                    else:
                        _741 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_741 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_741 + 36] = _714
                        mem[_741 + 68] = 0
                        mem[_741 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_741 + 132] = 128
                        mem[_741 + 164] = mem[_741]
                        s = 0
                        while s < mem[_741]:
                            mem[_741 + s + 196] = mem[_741 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_741] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _714, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_741 + 164 len mem[_741] + 32]
                        else:
                            mem[floor32(mem[_741]) + _741 + 196] = mem[floor32(mem[_741]) + _741 + -(mem[_741] % 32) + 228 len mem[_741] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _714, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_741], mem[_741 + 196 len floor32(mem[_741]) + 32]
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _742 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_742 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_742 + 36] = 0
                        mem[_742 + 68] = _714
                        mem[_742 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_742 + 132] = 128
                        mem[_742 + 164] = mem[_742]
                        s = 0
                        while s < mem[_742]:
                            mem[_742 + s + 196] = mem[_742 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_742] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _714, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_742 + 164 len mem[_742] + 32]
                        else:
                            mem[floor32(mem[_742]) + _742 + 196] = mem[floor32(mem[_742]) + _742 + -(mem[_742] % 32) + 228 len mem[_742] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _714, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_742], mem[_742 + 196 len floor32(mem[_742]) + 32]
                    else:
                        _743 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_743 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_743 + 36] = _714
                        mem[_743 + 68] = 0
                        mem[_743 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_743 + 132] = 128
                        mem[_743 + 164] = mem[_743]
                        s = 0
                        while s < mem[_743]:
                            mem[_743 + s + 196] = mem[_743 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_743] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _714, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_743 + 164 len mem[_743] + 32]
                        else:
                            mem[floor32(mem[_743]) + _743 + 196] = mem[floor32(mem[_743]) + _743 + -(mem[_743] % 32) + 228 len mem[_743] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _714, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_743], mem[_743 + 196 len floor32(mem[_743]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function sub_b06e202d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 132] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            if not idx:
                require idx + 1 < ('cd', 36).length
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if 997 * cd[68] / 997 != cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
            else:
                if idx != ('cd', 36).length - 1:
                    require idx + 1 < ('cd', 36).length
                    require idx - 1 < ('cd', 36).length
                    _317 = mem[(32 * idx - 1) + 128]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * _317 / 997 != _317:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317)
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * _317 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * _317:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _317 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317)
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317)
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * _317 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * _317:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _317 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317)
                    else:
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317)
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * _317 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * _317:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _317 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _317)
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317)
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * _317 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * _317:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _317 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _317)
                else:
                    require 0 < ('cd', 36).length
                    require idx - 1 < ('cd', 36).length
                    _318 = mem[(32 * idx - 1) + 128]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * _318 / 997 != _318:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318)
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * _318 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * _318:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _318 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318)
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318)
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * _318 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * _318:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _318 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318)
                    else:
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(('cd', 36)[0]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318)
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * _318 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * _318:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _318 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * _318)
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318)
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * _318 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * _318:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318)
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * _318 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * _318)
            idx = idx + 1
            continue 
        require ('cd', 36).length - 1 < ('cd', 36).length
        if mem[(32 * ('cd', 36).length - 1) + 128] <= cd[68]:
            revert with 0, 'prek'
        require 0 < ('cd', 36).length
        require 0 < ('cd', 4).length
        mem[(32 * ('cd', 36).length) + 132] = address(('cd', 4)[0])
        mem[(32 * ('cd', 36).length) + 164] = cd[68]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(('cd', 4)[0]), cd[68]
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if idx == ('cd', 36).length - 1:
                _877 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                require 0 < ('cd', 36).length
                require idx < ('cd', 4).length
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _888 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_888 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_888 + 36] = 0
                        mem[_888 + 68] = _877
                        mem[_888 + 100] = this.address
                        mem[_888 + 132] = 128
                        mem[_888 + 164] = mem[_888]
                        s = 0
                        while s < mem[_888]:
                            mem[_888 + s + 196] = mem[_888 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_888] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _877, address(this.address), 128, mem[_888 + 164 len mem[_888] + 32]
                        else:
                            mem[floor32(mem[_888]) + _888 + 196] = mem[floor32(mem[_888]) + _888 + -(mem[_888] % 32) + 228 len mem[_888] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _877, address(this.address), 128, mem[_888], mem[_888 + 196 len floor32(mem[_888]) + 32]
                    else:
                        _889 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_889 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_889 + 36] = _877
                        mem[_889 + 68] = 0
                        mem[_889 + 100] = this.address
                        mem[_889 + 132] = 128
                        mem[_889 + 164] = mem[_889]
                        s = 0
                        while s < mem[_889]:
                            mem[_889 + s + 196] = mem[_889 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_889] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _877, 0, address(this.address), 128, mem[_889 + 164 len mem[_889] + 32]
                        else:
                            mem[floor32(mem[_889]) + _889 + 196] = mem[floor32(mem[_889]) + _889 + -(mem[_889] % 32) + 228 len mem[_889] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _877, 0, address(this.address), 128, mem[_889], mem[_889 + 196 len floor32(mem[_889]) + 32]
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(('cd', 36)[0]):
                        _890 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_890 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_890 + 36] = 0
                        mem[_890 + 68] = _877
                        mem[_890 + 100] = this.address
                        mem[_890 + 132] = 128
                        mem[_890 + 164] = mem[_890]
                        s = 0
                        while s < mem[_890]:
                            mem[_890 + s + 196] = mem[_890 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_890] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _877, address(this.address), 128, mem[_890 + 164 len mem[_890] + 32]
                        else:
                            mem[floor32(mem[_890]) + _890 + 196] = mem[floor32(mem[_890]) + _890 + -(mem[_890] % 32) + 228 len mem[_890] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _877, address(this.address), 128, mem[_890], mem[_890 + 196 len floor32(mem[_890]) + 32]
                    else:
                        _891 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_891 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_891 + 36] = _877
                        mem[_891 + 68] = 0
                        mem[_891 + 100] = this.address
                        mem[_891 + 132] = 128
                        mem[_891 + 164] = mem[_891]
                        s = 0
                        while s < mem[_891]:
                            mem[_891 + s + 196] = mem[_891 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_891] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _877, 0, address(this.address), 128, mem[_891 + 164 len mem[_891] + 32]
                        else:
                            mem[floor32(mem[_891]) + _891 + 196] = mem[floor32(mem[_891]) + _891 + -(mem[_891] % 32) + 228 len mem[_891] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _877, 0, address(this.address), 128, mem[_891], mem[_891 + 196 len floor32(mem[_891]) + 32]
            else:
                _876 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                require idx + 1 < ('cd', 36).length
                require idx < ('cd', 4).length
                require idx + 1 < ('cd', 4).length
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _896 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_896 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_896 + 36] = 0
                        mem[_896 + 68] = _876
                        mem[_896 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_896 + 132] = 128
                        mem[_896 + 164] = mem[_896]
                        s = 0
                        while s < mem[_896]:
                            mem[_896 + s + 196] = mem[_896 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_896] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _876, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_896 + 164 len mem[_896] + 32]
                        else:
                            mem[floor32(mem[_896]) + _896 + 196] = mem[floor32(mem[_896]) + _896 + -(mem[_896] % 32) + 228 len mem[_896] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _876, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_896], mem[_896 + 196 len floor32(mem[_896]) + 32]
                    else:
                        _897 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_897 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_897 + 36] = _876
                        mem[_897 + 68] = 0
                        mem[_897 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_897 + 132] = 128
                        mem[_897 + 164] = mem[_897]
                        s = 0
                        while s < mem[_897]:
                            mem[_897 + s + 196] = mem[_897 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_897] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _876, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_897 + 164 len mem[_897] + 32]
                        else:
                            mem[floor32(mem[_897]) + _897 + 196] = mem[floor32(mem[_897]) + _897 + -(mem[_897] % 32) + 228 len mem[_897] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _876, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_897], mem[_897 + 196 len floor32(mem[_897]) + 32]
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _898 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_898 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_898 + 36] = 0
                        mem[_898 + 68] = _876
                        mem[_898 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_898 + 132] = 128
                        mem[_898 + 164] = mem[_898]
                        s = 0
                        while s < mem[_898]:
                            mem[_898 + s + 196] = mem[_898 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_898] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _876, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_898 + 164 len mem[_898] + 32]
                        else:
                            mem[floor32(mem[_898]) + _898 + 196] = mem[floor32(mem[_898]) + _898 + -(mem[_898] % 32) + 228 len mem[_898] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _876, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_898], mem[_898 + 196 len floor32(mem[_898]) + 32]
                    else:
                        _899 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_899 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_899 + 36] = _876
                        mem[_899 + 68] = 0
                        mem[_899 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_899 + 132] = 128
                        mem[_899 + 164] = mem[_899]
                        s = 0
                        while s < mem[_899]:
                            mem[_899 + s + 196] = mem[_899 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_899] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _876, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_899 + 164 len mem[_899] + 32]
                        else:
                            mem[floor32(mem[_899]) + _899 + 196] = mem[floor32(mem[_899]) + _899 + -(mem[_899] % 32) + 228 len mem[_899] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _876, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_899], mem[_899 + 196 len floor32(mem[_899]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 132] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 4).length
            require idx < ('cd', 36).length
            if not idx:
                require idx + 1 < ('cd', 36).length
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if 997 * cd[68] / 997 != cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                            require idx < ('cd', 36).length
                            mem[(32 * idx) + 128] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
            else:
                if idx != ('cd', 36).length - 1:
                    require idx + 1 < ('cd', 36).length
                    require idx - 1 < ('cd', 36).length
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * mem[(32 * idx - 1) + 128] / 997 != mem[(32 * idx - 1) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                    else:
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                else:
                    require 0 < ('cd', 36).length
                    require idx - 1 < ('cd', 36).length
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 36).length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 997 * mem[(32 * idx - 1) + 128] / 997 != mem[(32 * idx - 1) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                    else:
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(('cd', 36)[0]):
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * mem[(32 * idx - 1) + 128])
                        else:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * mem[(32 * idx - 1) + 128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
                                require idx < ('cd', 36).length
                                mem[(32 * idx) + 128] = 997 * mem[(32 * idx - 1) + 128] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * mem[(32 * idx - 1) + 128])
            idx = idx + 1
            continue 
        require ('cd', 36).length - 1 < ('cd', 36).length
        if mem[(32 * ('cd', 36).length - 1) + 128] <= cd[68]:
            revert with 0, 'prek'
        require 0 < ('cd', 36).length
        require 0 < ('cd', 4).length
        mem[(32 * ('cd', 36).length) + 132] = address(('cd', 4)[0])
        mem[(32 * ('cd', 36).length) + 164] = cd[68]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(('cd', 4)[0]), cd[68]
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if idx == ('cd', 36).length - 1:
                _879 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                require 0 < ('cd', 36).length
                require idx < ('cd', 4).length
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(('cd', 36)[0]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _892 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_892 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_892 + 36] = 0
                        mem[_892 + 68] = _879
                        mem[_892 + 100] = this.address
                        mem[_892 + 132] = 128
                        mem[_892 + 164] = mem[_892]
                        s = 0
                        while s < mem[_892]:
                            mem[_892 + s + 196] = mem[_892 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_892] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _879, address(this.address), 128, mem[_892 + 164 len mem[_892] + 32]
                        else:
                            mem[floor32(mem[_892]) + _892 + 196] = mem[floor32(mem[_892]) + _892 + -(mem[_892] % 32) + 228 len mem[_892] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _879, address(this.address), 128, mem[_892], mem[_892 + 196 len floor32(mem[_892]) + 32]
                    else:
                        _893 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_893 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_893 + 36] = _879
                        mem[_893 + 68] = 0
                        mem[_893 + 100] = this.address
                        mem[_893 + 132] = 128
                        mem[_893 + 164] = mem[_893]
                        s = 0
                        while s < mem[_893]:
                            mem[_893 + s + 196] = mem[_893 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_893] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _879, 0, address(this.address), 128, mem[_893 + 164 len mem[_893] + 32]
                        else:
                            mem[floor32(mem[_893]) + _893 + 196] = mem[floor32(mem[_893]) + _893 + -(mem[_893] % 32) + 228 len mem[_893] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _879, 0, address(this.address), 128, mem[_893], mem[_893 + 196 len floor32(mem[_893]) + 32]
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(('cd', 36)[0]):
                        _894 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_894 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_894 + 36] = 0
                        mem[_894 + 68] = _879
                        mem[_894 + 100] = this.address
                        mem[_894 + 132] = 128
                        mem[_894 + 164] = mem[_894]
                        s = 0
                        while s < mem[_894]:
                            mem[_894 + s + 196] = mem[_894 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_894] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _879, address(this.address), 128, mem[_894 + 164 len mem[_894] + 32]
                        else:
                            mem[floor32(mem[_894]) + _894 + 196] = mem[floor32(mem[_894]) + _894 + -(mem[_894] % 32) + 228 len mem[_894] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _879, address(this.address), 128, mem[_894], mem[_894 + 196 len floor32(mem[_894]) + 32]
                    else:
                        _895 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_895 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_895 + 36] = _879
                        mem[_895 + 68] = 0
                        mem[_895 + 100] = this.address
                        mem[_895 + 132] = 128
                        mem[_895 + 164] = mem[_895]
                        s = 0
                        while s < mem[_895]:
                            mem[_895 + s + 196] = mem[_895 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_895] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _879, 0, address(this.address), 128, mem[_895 + 164 len mem[_895] + 32]
                        else:
                            mem[floor32(mem[_895]) + _895 + 196] = mem[floor32(mem[_895]) + _895 + -(mem[_895] % 32) + 228 len mem[_895] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _879, 0, address(this.address), 128, mem[_895], mem[_895 + 196 len floor32(mem[_895]) + 32]
            else:
                _878 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                require idx + 1 < ('cd', 36).length
                require idx < ('cd', 4).length
                require idx + 1 < ('cd', 4).length
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        _912 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_912 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_912 + 36] = 0
                        mem[_912 + 68] = _878
                        mem[_912 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_912 + 132] = 128
                        mem[_912 + 164] = mem[_912]
                        s = 0
                        while s < mem[_912]:
                            mem[_912 + s + 196] = mem[_912 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_912] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _878, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_912 + 164 len mem[_912] + 32]
                        else:
                            mem[floor32(mem[_912]) + _912 + 196] = mem[floor32(mem[_912]) + _912 + -(mem[_912] % 32) + 228 len mem[_912] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _878, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_912], mem[_912 + 196 len floor32(mem[_912]) + 32]
                    else:
                        _913 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_913 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_913 + 36] = _878
                        mem[_913 + 68] = 0
                        mem[_913 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_913 + 132] = 128
                        mem[_913 + 164] = mem[_913]
                        s = 0
                        while s < mem[_913]:
                            mem[_913 + s + 196] = mem[_913 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_913] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _878, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_913 + 164 len mem[_913] + 32]
                        else:
                            mem[floor32(mem[_913]) + _913 + 196] = mem[floor32(mem[_913]) + _913 + -(mem[_913] % 32) + 228 len mem[_913] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _878, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_913], mem[_913 + 196 len floor32(mem[_913]) + 32]
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        _914 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_914 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_914 + 36] = 0
                        mem[_914 + 68] = _878
                        mem[_914 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_914 + 132] = 128
                        mem[_914 + 164] = mem[_914]
                        s = 0
                        while s < mem[_914]:
                            mem[_914 + s + 196] = mem[_914 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_914] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _878, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_914 + 164 len mem[_914] + 32]
                        else:
                            mem[floor32(mem[_914]) + _914 + 196] = mem[floor32(mem[_914]) + _914 + -(mem[_914] % 32) + 228 len mem[_914] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _878, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_914], mem[_914 + 196 len floor32(mem[_914]) + 32]
                    else:
                        _915 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_915 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_915 + 36] = _878
                        mem[_915 + 68] = 0
                        mem[_915 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_915 + 132] = 128
                        mem[_915 + 164] = mem[_915]
                        s = 0
                        while s < mem[_915]:
                            mem[_915 + s + 196] = mem[_915 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_915] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _878, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_915 + 164 len mem[_915] + 32]
                        else:
                            mem[floor32(mem[_915]) + _915 + 196] = mem[floor32(mem[_915]) + _915 + -(mem[_915] % 32) + 228 len mem[_915] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _878, 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_915], mem[_915 + 196 len floor32(mem[_915]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'nok'
}



}
