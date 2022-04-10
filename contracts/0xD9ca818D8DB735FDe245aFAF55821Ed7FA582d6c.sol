contract main {




// =====================  Runtime code  =====================


const sub_1dd6372f(?) = 'EmiVault-Avalanche v1.0'

const ORACLE = 0xdeb5a983adc9b25b8a96ae43a65953ded3939de6


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor1;
mapping of uint256 walletNonce;

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function walletNonce(address arg1) payable {
    require calldata.size - 4 >= 32
    return walletNonce[arg1]
}

function getWalletNonce() payable {
    return walletNonce[msg.sender]
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6450726976696c6564676561626c653a2063616c6c6572206973206e6f7420746865206f776e65,
                    mem[203 len 25]
    if not arg1:
        revert with 0, 'Admin address cannot be 0'
    stor1[address(arg1)] = 1
    emit PriviledgeGranted(arg1);
    return 0
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6450726976696c6564676561626c653a2063616c6c6572206973206e6f7420746865206f776e65,
                    mem[203 len 25]
    if not arg1:
        revert with 0, 'Admin address cannot be 0'
    stor1[address(arg1)] = 0
    emit PriviledgeRevoked(arg1);
    return 1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        stor1[address(arg1)] = 1
        emit PriviledgeGranted(arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            stor1[address(arg1)] = 1
            emit PriviledgeGranted(arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            stor1[address(arg1)] = 1
            emit PriviledgeGranted(arg1);
            uint8(stor0.field_8) = 0
}

function withdrawTokens(address[] arg1, uint256[] arg2, address arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg1.length) + (32 * arg2.length) + arg5.length + 192] = 0
    if arg3 != msg.sender:
        revert with 0, 'EmiVault:sender'
    if arg1.length <= 0:
        revert with 0, 'EmiVault:length'
    if arg1.length != arg2.length:
        revert with 0, 'EmiVault:length'
    if arg1.length > 60:
        revert with 0, 'EmiVault:length'
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg5.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg5.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 224] = address(arg3)
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 244] = arg4
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 276] = address(this.address)
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg5.length) + 192] = (96 * arg2.length) + (96 * arg1.length) + 72
    _88 = sha3(mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg5.length) + 224 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * arg1.length) + (32 * arg2.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]])
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 328] = '\x19Ethereum Signed Message:\n32'
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 356] = _88
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 296] = (127 * arg1.length) + 60
    _93 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 328 len (127 * arg1.length) + 60])
    if arg5.length != 65:
        revert with 0, 'Incorrect signature length'
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 388] = 0
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 420] = _93
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 452] = 0
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 484] = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
    mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 516] = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
    signer = erecover(_93, 0, mem[(32 * arg1.length) + (32 * arg2.length) + 192], mem[(32 * arg1.length) + (32 * arg2.length) + 224]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != 0xdeb5a983adc9b25b8a96ae43a65953ded3939de6:
        revert with 0, 'EmiVault:sign'
    if arg4 <= walletNonce[msg.sender]:
        revert with 0, 'EmiVault:sign'
    walletNonce[msg.sender] = arg4
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _120 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _122 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 424] = arg3
        mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 456] = _122
        require ext_code.size(address(_120))
        call address(_120).0xa9059cbb with:
             gas gas_remaining wei
            args mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 424 len (127 * arg2.length) + 64]
        mem[(64 * arg2.length) + (64 * arg1.length) + ceil32(arg5.length) + 420] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
