contract main {




// =====================  Runtime code  =====================


const balanceOfContract = eth.balance(this.address)


address owner;
uint256 startTime;
uint8 saleRunning;
address sub_caaf1783Address; offset 8
mapping of uint8 stor3;

function eligible(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function saleRunning() {
    return bool(saleRunning)
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function sub_caaf1783(?) {
    return sub_caaf1783Address
}

function pauseSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleRunning = 0
}

function resumeSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleRunning = 1
}

function addFundsToContract() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit Deposit(msg.value);
}

function startSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleRunning = 1
    emit saleStarted(block.timestamp);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function returnFunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function addAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_99122a91(?) payable {
    if not saleRunning:
        revert with 0, 'not yet'
    if not stor3[msg.sender]:
        revert with 0, 'you cannot claim'
    stor3[msg.sender] = 0
    require ext_code.size(sub_caaf1783Address)
    staticcall sub_caaf1783Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_caaf1783Address)
    call sub_caaf1783Address.mintSloth(uint256 rg1) with:
       value 10^18 wei
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_caaf1783Address)
    call sub_caaf1783Address.safeTransferFrom(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args this.address, msg.sender, ext_call.return_data[0], 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x78e97925(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3628731c(?????) > uint32(call.func_hash) >> 224:
                if eligible(address rg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor3[cd[4]])
                if uint32(call.func_hash) >> 224 != unknown_0x150b7a02(?????):
                    if unknown_0x1eb5ea2e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require unknown_0x33e364cb(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        saleRunning = 1
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                if ('cd', 100).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                    revert with 0, 65
                require cd[100] + ('cd', 100).length + 36 <= calldata.size
                return 0x150b7a0200000000000000000000000000000000000000000000000000000000
            if uint32(call.func_hash) >> 224 != unknown_0x3628731c(?????):
                if unknown_0x3779a3b6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(saleRunning)
                if unknown_0x55367ba9(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    saleRunning = 0
                else:
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                s = cd[4] + 36
                t = 160
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 172 len 20]
                    mem[32] = 3
                    stor3[mem[(32 * idx) + 172 len 20]] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if unknown_0xb66a0e5d(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xb66a0e5d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    saleRunning = 1
                    emit saleStarted(block.timestamp);
                else:
                    if unknown_0xcaaf1783(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_caaf1783Address
                    if unknown_0xe6c7c456(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return eth.balance(this.address)
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(cd[4]));
                    owner = address(cd[4])
            else:
                if unknown_0x78e97925(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return startTime
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0x99122a91(?????):
                    require unknown_0xabc735de(?????) == uint32(call.func_hash) >> 224
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit Deposit(msg.value);
                else:
                    if not saleRunning:
                        revert with 0, 'not yet'
                    if not stor3[msg.sender]:
                        revert with 0, 'you cannot claim'
                    stor3[msg.sender] = 0
                    require ext_code.size(sub_caaf1783Address)
                    staticcall sub_caaf1783Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_caaf1783Address)
                    call sub_caaf1783Address.mintSloth(uint256 rg1) with:
                       value 10^18 wei
                         gas gas_remaining wei
                        args 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_caaf1783Address)
                    call sub_caaf1783Address.safeTransferFrom(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args this.address, msg.sender, ext_call.return_data[0], 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
