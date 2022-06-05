contract main {




// =====================  Runtime code  =====================


#
#  - sub_de555942(?)
#
const sub_290ad26e(?) = 4

const sub_af8a9ba5(?) = 900


mapping of uint8 sub_8eb7938b;
array of struct observations;

function observations(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < 4
    return observations[arg1][arg2].field_0, observations[arg1][arg2].field_256, observations[arg1][arg2].field_512
}

function sub_8eb7938b(?) payable {
    require calldata.size - 4 >= 32
    return uint256(sub_8eb7938b[arg1])
}

function _fallback() payable {
    revert
}

function update(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint256(sub_8eb7938b[address(arg1)]):
        require uint256(sub_8eb7938b[address(arg1)]) - 1 % 4 < 4
        if block.timestamp - observations[address(arg1)][uint256(stor0[address(arg1)]) - 1 % 4].field_0 <= 900:
            revert with 0, 'Failed to update pair.'
    require ext_code.size(arg1)
    staticcall arg1.price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require sub_8eb7938b[address(arg1)] % 4 < 4
    observations[address(arg1)][stor0[address(arg1)] % 4].field_0 = uint32(ext_call.return_data[64])
    observations[address(arg1)][stor0[address(arg1)] % 4].field_256 = ext_call.return_data[0]
    observations[address(arg1)][stor0[address(arg1)] % 4].field_512 = ext_call.return_data[0]
    uint256(sub_8eb7938b[address(arg1)])++
}

function sub_421cd20c(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x546f6b656e206172726179206c656e67746873206d75737420626520657175616c20616e642067726561746572207468616e203000,
                    mem[217 len 11]
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x546f6b656e206172726179206c656e67746873206d75737420626520657175616c20616e642067726561746572207468616e203000,
                    mem[217 len 11]
    require ('cd', 4).length <= test266151307()
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        mem[(32 * ('cd', 4).length) + 132] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[(32 * ('cd', 4).length) + 164] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
        mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 4).length
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 192 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    return Array(len=('cd', 4).length, data=mem[128 len floor32(('cd', 4).length)], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + 192 len (32 * ('cd', 4).length) - floor32(('cd', 4).length)]), 
}

function update(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 0
        if not uint256(sub_8eb7938b[address(cd[((32 * idx) + arg1 + 36)])]):
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).price0CumulativeLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).price1CumulativeLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            _71 = mem[64]
            mem[64] = mem[64] + 96
            mem[_71] = uint32(ext_call.return_data[64])
            mem[_71 + 32] = ext_call.return_data[0]
            mem[_71 + 64] = ext_call.return_data[0]
            require sub_8eb7938b[address(cd[((32 * idx) + arg1 + 36)])] % 4 < 4
            observations[address(cd[((32 * idx) + arg1 + 36)])][stor0[address(cd[((32 * idx) + arg1 + 36)])] % 4].field_0 = uint32(ext_call.return_data[64])
            observations[address(cd[((32 * idx) + arg1 + 36)])][stor0[address(cd[((32 * idx) + arg1 + 36)])] % 4].field_256 = ext_call.return_data[0]
            observations[address(cd[((32 * idx) + arg1 + 36)])][stor0[address(cd[((32 * idx) + arg1 + 36)])] % 4].field_512 = ext_call.return_data[0]
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 0
            uint256(sub_8eb7938b[address(cd[((32 * idx) + arg1 + 36)])])++
        else:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 0
            require uint256(sub_8eb7938b[address(cd[((32 * idx) + arg1 + 36)])]) - 1 % 4 < 4
            if block.timestamp - observations[address(cd[((32 * idx) + arg1 + 36)])][uint256(stor0[address(cd[((32 * idx) + arg1 + 36)])]) - 1 % 4].field_0 > 900:
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).price0CumulativeLast() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).price1CumulativeLast() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                _80 = mem[64]
                mem[64] = mem[64] + 96
                mem[_80] = uint32(ext_call.return_data[64])
                mem[_80 + 32] = ext_call.return_data[0]
                mem[_80 + 64] = ext_call.return_data[0]
                require sub_8eb7938b[address(cd[((32 * idx) + arg1 + 36)])] % 4 < 4
                observations[address(cd[((32 * idx) + arg1 + 36)])][stor0[address(cd[((32 * idx) + arg1 + 36)])] % 4].field_0 = uint32(ext_call.return_data[64])
                observations[address(cd[((32 * idx) + arg1 + 36)])][stor0[address(cd[((32 * idx) + arg1 + 36)])] % 4].field_256 = ext_call.return_data[0]
                observations[address(cd[((32 * idx) + arg1 + 36)])][stor0[address(cd[((32 * idx) + arg1 + 36)])] % 4].field_512 = ext_call.return_data[0]
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 0
                uint256(sub_8eb7938b[address(cd[((32 * idx) + arg1 + 36)])])++
        idx = idx + 1
        continue 
    revert with 0, 'No pairs can be updated (yet).'
}

function sub_b9b2e68f(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg3)
    staticcall arg3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint256(sub_8eb7938b[address(ext_call.return_data[0])]):
        revert with 0, 32, 29, 0xfe4e6f206c656e6774682d312054574150206f62736572766174696f6e2e0000
    require uint256(sub_8eb7938b[address(ext_call.return_data[0])]) - 1 % 4 < 4
    if arg1 < arg2:
        if block.timestamp - 900 >= observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0:
            if block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0 < 900:
                revert with 0, 'Bad TWAP time.'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).price0CumulativeLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if block.timestamp == ext_call.return_data[92 len 4]:
                require block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0
                if not Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56:
                    return 0
                if 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56 / Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56 != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return (Mask(200, 56, 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56) >> 56)
            require ext_call.return_data[18 len 14]
            require block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0
            if not Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56:
                return 0
            if 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56 / Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56 != 10^uint8(ext_call.return_data[0]):
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            return (Mask(200, 56, 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56) >> 56)
        if uint256(sub_8eb7938b[address(ext_call.return_data[0])]) <= 1:
            revert with 0, '.No length-2 TWAP observation.'
        require uint256(sub_8eb7938b[address(ext_call.return_data[0])]) - 2 % 4 < 4
        if block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0 < 900:
            revert with 0, 'Bad TWAP time.'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if block.timestamp == ext_call.return_data[92 len 4]:
            require block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0
            if not Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56:
                return 0
            if 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56 / Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56 != 10^uint8(ext_call.return_data[0]):
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
            return (Mask(200, 56, 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56) >> 56)
        require ext_call.return_data[18 len 14]
        require block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0
        if not Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56:
            return 0
        if 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56 / Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
        return (Mask(200, 56, 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[32]) << 112 / ext_call.return_data[18 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_256 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56) >> 56)
    if block.timestamp - 900 >= observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0:
        if block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0 < 900:
            revert with 0, 'Bad TWAP time.'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
            require block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0
            if not Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56:
                return 0
            if 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56 / Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56 != 10^uint8(ext_call.return_data[0]):
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            return (Mask(200, 56, 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56) >> 56)
        require ext_call.return_data[50 len 14]
        require block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0
        if not Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[0]) << 112 / ext_call.return_data[50 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56:
            return 0
        if 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[0]) << 112 / ext_call.return_data[50 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56 / Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[0]) << 112 / ext_call.return_data[50 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (Mask(200, 56, 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[0]) << 112 / ext_call.return_data[50 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 1 % 4].field_0) >> 56) >> 56)
    if uint256(sub_8eb7938b[address(ext_call.return_data[0])]) <= 1:
        revert with 0, '.No length-2 TWAP observation.'
    require uint256(sub_8eb7938b[address(ext_call.return_data[0])]) - 2 % 4 < 4
    if block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0 < 900:
        revert with 0, 'Bad TWAP time.'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
        require block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0
        if not Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56:
            return 0
        if 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56 / Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
        return (Mask(200, 56, 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56) >> 56)
    require ext_call.return_data[50 len 14]
    require block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0
    if not Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[0]) << 112 / ext_call.return_data[50 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56:
        return 0
    if 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[0]) << 112 / ext_call.return_data[50 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56 / Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[0]) << 112 / ext_call.return_data[50 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56 != 10^uint8(ext_call.return_data[0]):
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
    return (Mask(200, 56, 10^uint8(ext_call.return_data[0]) * Mask(200, 56, ext_call.return_data[0] + (Mask(112, 0, ext_call.return_data[0]) << 112 / ext_call.return_data[50 len 14] * uint32(block.timestamp - ext_call.return_data[64])) - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_512 / block.timestamp - observations[address(ext_call.return_data[0])][uint256(stor0[address(ext_call.return_data[0])]) - 2 % 4].field_0) >> 56) >> 56)
}



}
