void main()
{
    float y = texture2D( TextureY, oTexCoord ).a;
    float u = texture2D( TextureU, oTexCoord ).a;
    float v = texture2D( TextureV, oTexCoord ).a;

    y = 1.1643 * (y - 0.0625);
    u = u - 0.5;
    v = v - 0.5;

    float r = y + 1.5958 * v;
    float g = y - 0.39173 * u - 0.81290 * v;
    float b = y + 2.017 * u;

    gl_FragColor = vec4(r, g, b, 1.f);
}