contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of address presales;
address baseTokenAddress;
address feeRecipientAddress;
uint256 createFeeAvax;
uint256 createFeeBaseToken;
uint256 feePercent;
address pangolinRouterAddress;
address pangolinFactoryAddress;

function createFeeBaseToken() {
    return createFeeBaseToken
}

function feeRecipient() {
    return feeRecipientAddress
}

function createFeeAvax() {
    return createFeeAvax
}

function pangolinRouter() {
    return pangolinRouterAddress
}

function presales(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < presales.length
    return presales[arg1]
}

function feePercent() {
    return feePercent
}

function owner() {
    return owner
}

function isPresale(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function pangolinFactory() {
    return pangolinFactoryAddress
}

function baseToken() {
    return baseTokenAddress
}

function getPresalesCount() {
    return presales.length
}

function _fallback() payable {
    revert
}

function getPangolinInfo() {
    return pangolinRouterAddress, pangolinFactoryAddress
}

function getFeeInfo() {
    return baseTokenAddress, feeRecipientAddress, createFeeAvax, createFeeBaseToken, feePercent
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCreateFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    createFeeAvax = arg1
    createFeeBaseToken = arg2
}

function setFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 1000:
        revert with 0, 'Invalid feePercent'
    feePercent = arg1
}

function setFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid _feeRecipient'
    feeRecipientAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function createPresale(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11, string arg12) payable {
    require calldata.size - 4 >= 384
    require arg1 == arg1
    require arg12 <= test266151307()
    require arg12 + 35 < calldata.size
    if arg12.length > test266151307():
        revert with 0, 65
    if ceil32(arg12.length) + 128 < 96 or ceil32(arg12.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg12.length + arg12 + 36
    mem[128 len arg12.length] = arg12[all]
    mem[arg12.length + 128] = 0
    if createFeeAvax != msg.value:
        revert with 0, 'Not enough fee'
    call feeRecipientAddress with:
       value createFeeAvax wei
         gas gas_remaining wei
    if return_data.size:
        mem[ceil32(arg12.length) + 128] = return_data.size
        if not ext_call.success:
            revert with 0, 'AVAX FEE pay failed'
        mem[ceil32(arg12.length) + ceil32(return_data.size) + 129] = 100
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(baseTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(arg12.length) + ceil32(return_data.size) + 325 len 128] = unknown_0x23b872dd(?????), msg.sender, feeRecipientAddress, createFeeBaseToken, 0
        call baseTokenAddress with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, feeRecipientAddress, createFeeBaseToken, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, feeRecipientAddress, createFeeBaseToken, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if arg12.length:
                    revert with arg12[all]
                revert with 0, 'SafeERC20: low-level call failed'
            if arg12.length:
                require arg12.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(arg12.length) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(arg12.length) + ceil32(return_data.size) + 357] == bool(mem[ceil32(arg12.length) + ceil32(return_data.size) + 357])
                if not mem[ceil32(arg12.length) + ceil32(return_data.size) + 357]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if not ext_call.success:
            revert with 0, 'AVAX FEE pay failed'
        mem[ceil32(arg12.length) + 164] = msg.sender
        mem[ceil32(arg12.length) + 196] = feeRecipientAddress
        mem[ceil32(arg12.length) + 228] = createFeeBaseToken
        mem[ceil32(arg12.length) + 128] = 100
        mem[ceil32(arg12.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg12.length) + 160 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(arg12.length) + 260] = 32
        mem[ceil32(arg12.length) + 292] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(baseTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(arg12.length) + 324 len ceil32(Mask(8 * -ceil32(arg12.length) + arg12.length + 32, 0, 0), mem[arg12.length + 160 len -arg12.length + ceil32(arg12.length)])] = mem[ceil32(arg12.length) + 160 len ceil32(Mask(8 * -ceil32(arg12.length) + arg12.length + 32, 0, 0), mem[arg12.length + 160 len -arg12.length + ceil32(arg12.length)])]
        if ceil32(Mask(8 * -ceil32(arg12.length) + arg12.length + 32, 0, 0), mem[arg12.length + 160 len -arg12.length + ceil32(arg12.length)]) > Mask(8 * -ceil32(arg12.length) + arg12.length + 32, 0, 0), mem[arg12.length + 160 len -arg12.length + ceil32(arg12.length)]:
            mem[Mask(8 * -ceil32(arg12.length) + arg12.length + 32, 0, 0), mem[arg12.length + 160 len -arg12.length + ceil32(arg12.length)] + ceil32(arg12.length) + 324] = 0
        call baseTokenAddress.mem[ceil32(arg12.length) + 324 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg12.length) + 328 len Mask(8 * -ceil32(arg12.length) + arg12.length + 32, 0, 0), mem[arg12.length + 160 len -arg12.length + ceil32(arg12.length)] - 4]
        if not return_data.size:
            if not ext_call.success:
                if arg12.length:
                    revert with arg12[all]
                revert with 0, 'SafeERC20: low-level call failed'
            if arg12.length:
                require arg12.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(arg12.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(arg12.length) + 356] == bool(mem[ceil32(arg12.length) + 356])
                if not mem[ceil32(arg12.length) + 356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    create contract with 0 wei
                    code: code.data[4508 len 15343], address(this.address), address(arg1), arg2, arg3, arg4
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x3537b36f with:
         gas gas_remaining wei
        args arg5, arg6, arg7, arg8, arg9, arg10, arg11, Array(len=arg12.length, data=arg12[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    presales.length++
    presales[presales.length] = address(create.new_address)
    stor1[address(create.new_address)] = 1
    emit 0x5b195ba7: msg.sender, presales.length, address(create.new_address)
    return address(create.new_address)
}



}
