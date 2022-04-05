contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of struct authorities;
uint256 nonce;
mapping of uint256 sub_67b04368;

function authorities(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < authorities.length
    return authorities[arg1].field_0
}

function sub_67b04368(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_67b04368[arg1]
}

function owner() {
    return owner
}

function nonce() {
    return nonce
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with OnlyOwnerError(address rg1, address rg2), msg.sender, owner
    if not arg1:
        revert with TransferOwnerToZeroError()
    owner = arg1
    emit OwnershipTransferred(msg.sender, arg1);
}

function kill(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with SenderNotAuthorizedError(address rg1), msg.sender
    require ext_code.size(arg1)
    call arg1.die(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Killed(address(arg1), msg.sender);
}

function addAuthorizedAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with OnlyOwnerError(address rg1, address rg2), msg.sender, owner
    if not arg1:
        revert with ZeroCantBeAuthorizedError()
    if stor1[address(arg1)]:
        revert with TargetAlreadyAuthorizedError(address rg1), address(arg1) << 64, 0
    stor1[address(arg1)] = 1
    authorities.length++
    authorities[authorities.length].field_0 = arg1
    emit AuthorizedAddressAdded(arg1, msg.sender);
}

function removeAuthorizedAddressAtIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with OnlyOwnerError(address rg1, address rg2), msg.sender, owner
    if not stor1[address(arg1)]:
        revert with TargetNotAuthorizedError(address rg1), address(arg1) << 64, 0
    if arg2 >= authorities.length:
        revert with IndexOutOfBoundsError(uint256 rg1, uint256 rg2), arg2, authorities.length
    if authorities[arg2].field_0 != arg1:
        require arg2 < authorities.length
        revert with AuthorizedAddressMismatchError(address rg1, address rg2), authorities[arg2].field_0, authorities[arg2].field_0, arg1
    stor1[address(arg1)] = 0
    require authorities.length - 1 < authorities.length
    require arg2 < authorities.length
    authorities[arg2].field_0 = authorities[authorities.length].field_0
    require authorities.length
    authorities[authorities.length].field_0 = 0
    authorities.length--
    emit AuthorizedAddressRemoved(arg1, msg.sender);
}

function getAuthorizedAddresses() {
    mem[64] = (32 * authorities.length) + 128
    mem[96] = authorities.length
    if not authorities.length:
        mem[(32 * authorities.length) + 128] = 32
        mem[(32 * authorities.length) + 160] = authorities.length
        idx = 0
        s = (32 * authorities.length) + 192
        t = 128
        while idx < authorities.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * authorities.length) + 128
           len (96 * authorities.length) + 64
    mem[128] = address(authorities.field_0)
    idx = 128
    s = 0
    while (32 * authorities.length) + 96 > idx:
        mem[idx + 32] = authorities[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * authorities.length) + 128] = 32
    mem[(32 * authorities.length) + 160] = authorities.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < authorities.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * authorities.length) + -mem[64] + 192
}

function deploy(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require calldata.size >= arg1.length + arg1 + 36
    if not stor1[msg.sender]:
        mem[ceil32(arg1.length) + 164] = msg.sender
        mem[ceil32(arg1.length) + 128] = 36
        mem[ceil32(arg1.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg1.length) + 160 len 4] = SenderNotAuthorizedError(address rg1)
        revert with memory
          from ceil32(arg1.length) + 160
           len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    nonce++
    create contract with callvalue wei
                    code: arg1[all]
    if not address(create.new_address):
        revert with 0, 'TransformerDeployer/DEPLOY_FAILED'
    sub_67b04368[address(create.new_address)] = nonce
    mem[ceil32(arg1.length) + 128] = address(create.new_address)
    mem[ceil32(arg1.length) + 160] = nonce
    emit Deployed(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], msg.sender);
    mem[ceil32(arg1.length) + 128] = address(create.new_address)
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function removeAuthorizedAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with OnlyOwnerError(address rg1, address rg2), msg.sender, owner
    if not stor1[address(arg1)]:
        revert with TargetNotAuthorizedError(address rg1), address(arg1) << 64, 0
    idx = 0
    while idx < authorities.length:
        mem[0] = 2
        if authorities[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        if not stor1[address(arg1)]:
            revert with 0xeb5108a200000000000000000000000000000000000000000000000000000000 or address(arg1) << 64, 0
        if idx >= authorities.length:
            revert with 0xe9f8377100000000000000000000000000000000000000000000000000000000 or Mask(224, 32, idx) >> 32, 
                        uint32(idx),
                        authorities.length
        if authorities[idx].field_0 != arg1:
            require idx < authorities.length
            revert with 0x140a84db00000000000000000000000000000000000000000000000000000000 or authorities[idx].field_0, 
                        authorities[idx].field_0,
                        arg1
        stor1[address(arg1)] = 0
        require authorities.length - 1 < authorities.length
        require idx < authorities.length
        authorities[idx].field_0 = authorities[authorities.length].field_0
        require authorities.length
        authorities[authorities.length].field_0 = 0
        authorities.length--
        emit AuthorizedAddressRemoved(arg1, msg.sender);
}



}
