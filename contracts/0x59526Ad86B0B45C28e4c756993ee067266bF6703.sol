contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 sub_01dc5669;
address sub_d4b8eb77Address;
address reservesAddress;
address sub_99119d22Address;
address usdcTokenAddress;
uint256 claimTax;
uint8 isLive;
address pairAddress; offset 8
address devAddress;
address treasuryAddress;
address reserveAddress;
address sub_22446fb8Address;
address sub_770915e1Address;
address feeSplitterAddress;
mapping of uint256 sub_de23b555;
uint256 initialBlockNumber;
uint256 currentBlockNumber;

function sub_01dc5669(?) {
    return sub_01dc5669
}

function usdcToken() {
    return usdcTokenAddress
}

function sub_22446fb8(?) {
    return sub_22446fb8Address
}

function currentBlockNumber() {
    return currentBlockNumber
}

function devAddress() {
    return devAddress
}

function claimTax() {
    return claimTax
}

function feeSplitter() {
    return feeSplitterAddress
}

function reserves() {
    return reservesAddress
}

function sub_770915e1(?) {
    return sub_770915e1Address
}

function owner() {
    return owner
}

function sub_99119d22(?) {
    return sub_99119d22Address
}

function pairAddress() {
    return pairAddress
}

function initialBlockNumber() {
    return initialBlockNumber
}

function isLive() {
    return bool(isLive)
}

function treasuryAddress() {
    return treasuryAddress
}

function sub_d4b8eb77(?) {
    return sub_d4b8eb77Address
}

function sub_de23b555(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_de23b555[arg1][arg2]
}

function reserveAddress() {
    return reserveAddress
}

function _fallback() payable {
    revert
}

function startFarm() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isLive = 1
}

function sub_a113601b(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isLive = 0
}

function sub_03d7bda7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimTax = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_cdae1055(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_01dc5669 = arg1
}

function calculateTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 / 100 and claimTax > -1 / arg1 / 100:
        revert with 0, 17
    return (arg1 / 100 * claimTax)
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddress = arg1
}

function setPairAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pairAddress = arg1
}

function setTokenAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_99119d22Address = arg1
}

function setShopAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_22446fb8Address = arg1
}

function setTreasuryAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function sub_fbdeff2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    usdcTokenAddress = address(arg1)
}

function sub_d8f31436(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d4b8eb77Address = address(arg1)
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

function transferToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9d37ca22(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 160] = address(arg1)
    mem[(32 * arg3.length) + 180] = arg2
    mem[(32 * arg3.length) + 128] = 52
    idx = 0
    s = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 0, 50
        if s + sha3(address(arg1), arg2) > mem[(32 * idx) + 128]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = s + sha3(address(arg1), arg2)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[(32 * idx) + 128], s)
            continue 
        mem[0] = s + sha3(address(arg1), arg2)
        mem[32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(s, mem[(32 * idx) + 128])
        continue 
    if s != sub_01dc5669:
        return 0
    if arg2 < sub_de23b555[stor2][address(arg1)]:
        revert with 0, 17
    return (arg2 - sub_de23b555[stor2][address(arg1)])
}

function setFeeSplitter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_770915e1Address:
        require ext_code.size(sub_99119d22Address)
        call sub_99119d22Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_770915e1Address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(usdcTokenAddress)
        call usdcTokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_770915e1Address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    feeSplitterAddress = arg1
    require ext_code.size(sub_99119d22Address)
    call sub_99119d22Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(usdcTokenAddress)
    call usdcTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1a89056c(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    if not sub_22446fb8Address:
        revert with 0, 'shop addres is not set yet'
    if sub_22446fb8Address != msg.sender:
        revert with 0, 'caller must be the shop'
    if not isLive:
        revert with 0, 'Farm is not live'
    if arg2 and arg4 > -1 / arg2:
        revert with 0, 17
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 160] = address(arg1)
    mem[(32 * arg5.length) + 180] = arg3
    mem[(32 * arg5.length) + 128] = 52
    idx = 0
    s = 0
    while idx < arg5.length:
        if idx >= arg5.length:
            revert with 0, 50
        if s + sha3(address(arg1), arg3) > mem[(32 * idx) + 128]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = s + sha3(address(arg1), arg3)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[(32 * idx) + 128], s)
            continue 
        mem[0] = s + sha3(address(arg1), arg3)
        mem[32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(s, mem[(32 * idx) + 128])
        continue 
    if s != sub_01dc5669:
        revert with 0, 'Invalid proof.'
    if arg2 > !sub_de23b555[stor2][address(arg1)]:
        revert with 0, 17
    if arg2 + sub_de23b555[stor2][address(arg1)] > arg3:
        revert with 0, 'No enough eggs to harvest'
    require ext_code.size(sub_d4b8eb77Address)
    staticcall sub_d4b8eb77Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg2:
        revert with 0, 17
    require ext_code.size(sub_d4b8eb77Address)
    staticcall sub_d4b8eb77Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg2:
        revert with 0, 17
    if arg4 and arg2 > -1 / arg4:
        revert with 0, 17
    require ext_code.size(sub_d4b8eb77Address)
    staticcall sub_d4b8eb77Address.0x453c2310 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg2 > ext_call.return_data[0]:
        revert with 0, 'Nodes owned > Max per wallet'
    require ext_code.size(sub_d4b8eb77Address)
    staticcall sub_d4b8eb77Address.0xd5abeb01 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg2 > ext_call.return_data[0]:
        revert with 0, 'Chickens sold out'
    if arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if arg4 * arg2 > 10^18 * arg3:
        revert with 0, 'No enough eggs to harvest'
    if sub_de23b555[stor2][address(arg1)] > !(arg2 * arg4 / 10^18):
        revert with 0, 17
    sub_de23b555[stor2][address(arg1)] += arg2 * arg4 / 10^18
    emit 0x16b28419: block.number, block.timestamp, address(arg1), arg2 * arg4 / 10^18
    currentBlockNumber = block.number
    return 1
}

function sub_010970c9(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not isLive:
        revert with 0, 'Farm is not live'
    if 10^18 * arg1 <= 0:
        revert with 0, 'Must harvest at least 1 egg'
    mem[100] = msg.sender
    require ext_code.size(sub_d4b8eb77Address)
    staticcall sub_d4b8eb77Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No chickens owned'
    if arg1 > !sub_de23b555[stor2][msg.sender]:
        revert with 0, 17
    if arg1 + sub_de23b555[stor2][msg.sender] > arg2:
        revert with 0, 'No enough eggs to harvest'
    mem[ceil32(return_data.size) + 96] = arg3.length
    mem[ceil32(return_data.size) + 128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[ceil32(return_data.size) + (32 * arg3.length) + 160] = address(msg.sender)
    mem[ceil32(return_data.size) + (32 * arg3.length) + 180] = arg2
    mem[ceil32(return_data.size) + (32 * arg3.length) + 128] = 52
    idx = 0
    s = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 0, 50
        if s + sha3(msg.sender, arg2) > mem[(32 * idx) + ceil32(return_data.size) + 128]:
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = s + sha3(msg.sender, arg2)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[(32 * idx) + ceil32(return_data.size) + 128], s)
            continue 
        mem[0] = s + sha3(msg.sender, arg2)
        mem[32] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(s, mem[(32 * idx) + ceil32(return_data.size) + 128])
        continue 
    if s != sub_01dc5669:
        revert with 0, 'Invalid proof'
    if 10^18 * arg1 / 100 and claimTax > -1 / 10^18 * arg1 / 100:
        revert with 0, 17
    if 10^18 * arg1 < 10^18 * arg1 / 100 * claimTax:
        revert with 0, 17
    mem[ceil32(return_data.size) + (32 * arg3.length) + 216] = this.address
    require ext_code.size(sub_99119d22Address)
    staticcall sub_99119d22Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + (32 * arg3.length) + 212] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^18 * arg1 < ext_call.return_data[0]:
        revert with 0, 17
    if (10^18 * arg1) - ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 216] = (10^18 * arg1) - ext_call.return_data[0]
        require ext_code.size(reservesAddress)
        call reservesAddress.0x4828ced9 with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 216 len ceil32(return_data.size) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_de23b555[stor2][msg.sender] > !arg1:
        revert with 0, 17
    sub_de23b555[stor2][msg.sender] += arg1
    if not (10^18 * arg1) - (10^18 * arg1 / 100 * claimTax):
        mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 216] = this.address
        mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 248] = 10^18 * arg1 / 100 * claimTax
        require ext_code.size(feeSplitterAddress)
        call feeSplitterAddress.0xd9ec2b7f with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 216 len ceil32(return_data.size) + 64]
        mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 212] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 212] = block.number
        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 244] = block.timestamp
        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 276] = msg.sender
        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 308] = arg1
        emit 0x16b28419: mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 212 len (5 * ceil32(return_data.size)) + 128]
        currentBlockNumber = block.number
        stor1 = 1
        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 212] = 1
        return memory
          from (4 * ceil32(return_data.size)) + (32 * arg3.length) + 212
           len (5 * ceil32(return_data.size)) + 32
    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 248] = msg.sender
    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 280] = (10^18 * arg1) - (10^18 * arg1 / 100 * claimTax)
    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 212] = ceil32(return_data.size) + 68
    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 248 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 244 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 312] = 32
    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 344] = 'SafeERC20: low-level call failed'
    if not ext_code.size(sub_99119d22Address):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 376 len floor32(ceil32(return_data.size) + 99)] = unknown_0xa9059cbb(?????), msg.sender, (10^18 * arg1) - (10^18 * arg1 / 100 * claimTax), mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 312 len floor32(ceil32(return_data.size) + 99) - 68]
    if floor32(ceil32(return_data.size) + 99) > ceil32(return_data.size) + 68:
        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 444] = 0
    call sub_99119d22Address.mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 376 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 380 len (6 * ceil32(return_data.size)) + 64]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 408 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 408] == bool(mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 408])
            if not mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 408]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0xbcd97362: msg.sender, (10^18 * arg1) - (10^18 * arg1 / 100 * claimTax), sub_99119d22Address
    require ext_code.size(feeSplitterAddress)
    call feeSplitterAddress.0xd9ec2b7f with:
         gas gas_remaining wei
        args this.address, 10^18 * arg1 / 100 * claimTax
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x16b28419: block.number, block.timestamp, msg.sender, arg1
    currentBlockNumber = block.number
    stor1 = 1
    return 1
}



}
